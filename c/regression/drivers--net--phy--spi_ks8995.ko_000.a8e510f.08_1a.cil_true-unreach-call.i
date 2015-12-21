extern void __VERIFIER_error() __attribute__ ((__noreturn__));

/* Generated by CIL v. 1.5.1 */
/* print_CIL_Input is false */

typedef unsigned short __u16;
typedef unsigned int __u32;
typedef unsigned long long __u64;
typedef unsigned char u8;
typedef short s16;
typedef unsigned short u16;
typedef unsigned int u32;
typedef long long s64;
typedef unsigned long long u64;
typedef unsigned int __kernel_mode_t;
typedef unsigned long __kernel_size_t;
typedef long __kernel_ssize_t;
typedef long long __kernel_loff_t;
typedef __u32 __kernel_dev_t;
typedef __kernel_dev_t dev_t;
typedef __kernel_mode_t mode_t;
typedef _Bool bool;
typedef __kernel_loff_t loff_t;
typedef __kernel_size_t size_t;
typedef __kernel_ssize_t ssize_t;
typedef u64 dma_addr_t;
typedef unsigned int gfp_t;
struct __anonstruct_atomic_t_6 {
   int counter ;
};
typedef struct __anonstruct_atomic_t_6 atomic_t;
struct __anonstruct_atomic64_t_7 {
   long counter ;
};
typedef struct __anonstruct_atomic64_t_7 atomic64_t;
struct list_head {
   struct list_head *next ;
   struct list_head *prev ;
};
struct module;
typedef void (*ctor_fn_t)(void);
struct device;
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct completion;
struct page;
struct task_struct;
struct file;
struct arch_spinlock;
struct jump_label_key;
struct kmem_cache;
typedef atomic64_t atomic_long_t;
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion_ldv_5950_29 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion_ldv_5950_29 ldv_5950 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct lockdep_map;
struct stack_trace {
   unsigned int nr_entries ;
   unsigned int max_entries ;
   unsigned long *entries ;
   int skip ;
};
struct lockdep_subclass_key {
   char __one_byte ;
};
struct lock_class_key {
   struct lockdep_subclass_key subkeys[8U] ;
};
struct lock_class {
   struct list_head hash_entry ;
   struct list_head lock_entry ;
   struct lockdep_subclass_key *key ;
   unsigned int subclass ;
   unsigned int dep_gen_id ;
   unsigned long usage_mask ;
   struct stack_trace usage_traces[13U] ;
   struct list_head locks_after ;
   struct list_head locks_before ;
   unsigned int version ;
   unsigned long ops ;
   char const   *name ;
   int name_version ;
   unsigned long contention_point[4U] ;
   unsigned long contending_point[4U] ;
};
struct lockdep_map {
   struct lock_class_key *key ;
   struct lock_class *class_cache[2U] ;
   char const   *name ;
   int cpu ;
   unsigned long ip ;
};
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
struct __anonstruct_ldv_6169_33 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion_ldv_6170_32 {
   struct raw_spinlock rlock ;
   struct __anonstruct_ldv_6169_33 ldv_6169 ;
};
struct spinlock {
   union __anonunion_ldv_6170_32 ldv_6170 ;
};
typedef struct spinlock spinlock_t;
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   char const   *name ;
   void *magic ;
   struct lockdep_map dep_map ;
};
union ktime {
   s64 tv64 ;
};
typedef union ktime ktime_t;
struct tvec_base;
struct timer_list {
   struct list_head entry ;
   unsigned long expires ;
   struct tvec_base *base ;
   void (*function)(unsigned long  ) ;
   unsigned long data ;
   int slack ;
   int start_pid ;
   void *start_site ;
   char start_comm[16U] ;
   struct lockdep_map lockdep_map ;
};
struct work_struct;
struct work_struct {
   atomic_long_t data ;
   struct list_head entry ;
   void (*func)(struct work_struct * ) ;
   struct lockdep_map lockdep_map ;
};
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
struct pm_message {
   int event ;
};
typedef struct pm_message pm_message_t;
struct dev_pm_ops {
   int (*prepare)(struct device * ) ;
   void (*complete)(struct device * ) ;
   int (*suspend)(struct device * ) ;
   int (*resume)(struct device * ) ;
   int (*freeze)(struct device * ) ;
   int (*thaw)(struct device * ) ;
   int (*poweroff)(struct device * ) ;
   int (*restore)(struct device * ) ;
   int (*suspend_noirq)(struct device * ) ;
   int (*resume_noirq)(struct device * ) ;
   int (*freeze_noirq)(struct device * ) ;
   int (*thaw_noirq)(struct device * ) ;
   int (*poweroff_noirq)(struct device * ) ;
   int (*restore_noirq)(struct device * ) ;
   int (*runtime_suspend)(struct device * ) ;
   int (*runtime_resume)(struct device * ) ;
   int (*runtime_idle)(struct device * ) ;
};
enum rpm_status {
    RPM_ACTIVE = 0,
    RPM_RESUMING = 1,
    RPM_SUSPENDED = 2,
    RPM_SUSPENDING = 3
} ;
enum rpm_request {
    RPM_REQ_NONE = 0,
    RPM_REQ_IDLE = 1,
    RPM_REQ_SUSPEND = 2,
    RPM_REQ_AUTOSUSPEND = 3,
    RPM_REQ_RESUME = 4
} ;
struct wakeup_source;
struct pm_subsys_data {
   spinlock_t lock ;
   unsigned int refcount ;
};
struct pm_qos_constraints;
struct dev_pm_info {
   pm_message_t power_state ;
   unsigned char can_wakeup : 1 ;
   unsigned char async_suspend : 1 ;
   bool is_prepared ;
   bool is_suspended ;
   bool ignore_children ;
   spinlock_t lock ;
   struct list_head entry ;
   struct completion completion ;
   struct wakeup_source *wakeup ;
   bool wakeup_path ;
   struct timer_list suspend_timer ;
   unsigned long timer_expires ;
   struct work_struct work ;
   wait_queue_head_t wait_queue ;
   atomic_t usage_count ;
   atomic_t child_count ;
   unsigned char disable_depth : 3 ;
   unsigned char idle_notification : 1 ;
   unsigned char request_pending : 1 ;
   unsigned char deferred_resume : 1 ;
   unsigned char run_wake : 1 ;
   unsigned char runtime_auto : 1 ;
   unsigned char no_callbacks : 1 ;
   unsigned char irq_safe : 1 ;
   unsigned char use_autosuspend : 1 ;
   unsigned char timer_autosuspends : 1 ;
   enum rpm_request request ;
   enum rpm_status runtime_status ;
   int runtime_error ;
   int autosuspend_delay ;
   unsigned long last_busy ;
   unsigned long active_jiffies ;
   unsigned long suspended_jiffies ;
   unsigned long accounting_timestamp ;
   struct pm_subsys_data *subsys_data ;
   struct pm_qos_constraints *constraints ;
};
struct dev_pm_domain {
   struct dev_pm_ops ops ;
};
struct vm_area_struct;
typedef __u64 Elf64_Addr;
typedef __u16 Elf64_Half;
typedef __u32 Elf64_Word;
typedef __u64 Elf64_Xword;
struct elf64_sym {
   Elf64_Word st_name ;
   unsigned char st_info ;
   unsigned char st_other ;
   Elf64_Half st_shndx ;
   Elf64_Addr st_value ;
   Elf64_Xword st_size ;
};
typedef struct elf64_sym Elf64_Sym;
struct sock;
struct kobject;
enum kobj_ns_type {
    KOBJ_NS_TYPE_NONE = 0,
    KOBJ_NS_TYPE_NET = 1,
    KOBJ_NS_TYPES = 2
} ;
struct kobj_ns_type_operations {
   enum kobj_ns_type type ;
   void *(*grab_current_ns)(void) ;
   void const   *(*netlink_ns)(struct sock * ) ;
   void const   *(*initial_ns)(void) ;
   void (*drop_ns)(void * ) ;
};
struct attribute {
   char const   *name ;
   mode_t mode ;
   struct lock_class_key *key ;
   struct lock_class_key skey ;
};
struct attribute_group {
   char const   *name ;
   mode_t (*is_visible)(struct kobject * , struct attribute * , int  ) ;
   struct attribute **attrs ;
};
struct bin_attribute {
   struct attribute attr ;
   size_t size ;
   void *private ;
   ssize_t (*read)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                   loff_t  , size_t  ) ;
   ssize_t (*write)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                    loff_t  , size_t  ) ;
   int (*mmap)(struct file * , struct kobject * , struct bin_attribute * , struct vm_area_struct * ) ;
};
struct sysfs_ops {
   ssize_t (*show)(struct kobject * , struct attribute * , char * ) ;
   ssize_t (*store)(struct kobject * , struct attribute * , char const   * , size_t  ) ;
   void const   *(*namespace)(struct kobject * , struct attribute  const  * ) ;
};
struct sysfs_dirent;
struct kref {
   atomic_t refcount ;
};
struct kset;
struct kobj_type;
struct kobject {
   char const   *name ;
   struct list_head entry ;
   struct kobject *parent ;
   struct kset *kset ;
   struct kobj_type *ktype ;
   struct sysfs_dirent *sd ;
   struct kref kref ;
   unsigned char state_initialized : 1 ;
   unsigned char state_in_sysfs : 1 ;
   unsigned char state_add_uevent_sent : 1 ;
   unsigned char state_remove_uevent_sent : 1 ;
   unsigned char uevent_suppress : 1 ;
};
struct kobj_type {
   void (*release)(struct kobject * ) ;
   struct sysfs_ops  const  *sysfs_ops ;
   struct attribute **default_attrs ;
   struct kobj_ns_type_operations  const  *(*child_ns_type)(struct kobject * ) ;
   void const   *(*namespace)(struct kobject * ) ;
};
struct kobj_uevent_env {
   char *envp[32U] ;
   int envp_idx ;
   char buf[2048U] ;
   int buflen ;
};
struct kset_uevent_ops {
   int (* const  filter)(struct kset * , struct kobject * ) ;
   char const   *(* const  name)(struct kset * , struct kobject * ) ;
   int (* const  uevent)(struct kset * , struct kobject * , struct kobj_uevent_env * ) ;
};
struct kset {
   struct list_head list ;
   spinlock_t list_lock ;
   struct kobject kobj ;
   struct kset_uevent_ops  const  *uevent_ops ;
};
struct kernel_param;
struct kernel_param_ops {
   int (*set)(char const   * , struct kernel_param  const  * ) ;
   int (*get)(char * , struct kernel_param  const  * ) ;
   void (*free)(void * ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion_ldv_13145_134 {
   void *arg ;
   struct kparam_string  const  *str ;
   struct kparam_array  const  *arr ;
};
struct kernel_param {
   char const   *name ;
   struct kernel_param_ops  const  *ops ;
   u16 perm ;
   u16 flags ;
   union __anonunion_ldv_13145_134 ldv_13145 ;
};
struct kparam_string {
   unsigned int maxlen ;
   char *string ;
};
struct kparam_array {
   unsigned int max ;
   unsigned int elemsize ;
   unsigned int *num ;
   struct kernel_param_ops  const  *ops ;
   void *elem ;
};
struct jump_label_key {
   atomic_t enabled ;
};
struct tracepoint;
struct tracepoint_func {
   void *func ;
   void *data ;
};
struct tracepoint {
   char const   *name ;
   struct jump_label_key key ;
   void (*regfunc)(void) ;
   void (*unregfunc)(void) ;
   struct tracepoint_func *funcs ;
};
struct kernel_symbol {
   unsigned long value ;
   char const   *name ;
};
struct mod_arch_specific {

};
struct module_param_attrs;
struct module_kobject {
   struct kobject kobj ;
   struct module *mod ;
   struct kobject *drivers_dir ;
   struct module_param_attrs *mp ;
};
struct module_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct module_attribute * , struct module_kobject * , char * ) ;
   ssize_t (*store)(struct module_attribute * , struct module_kobject * , char const   * ,
                    size_t  ) ;
   void (*setup)(struct module * , char const   * ) ;
   int (*test)(struct module * ) ;
   void (*free)(struct module * ) ;
};
struct exception_table_entry;
enum module_state {
    MODULE_STATE_LIVE = 0,
    MODULE_STATE_COMING = 1,
    MODULE_STATE_GOING = 2
} ;
struct module_ref {
   unsigned int incs ;
   unsigned int decs ;
};
struct module_sect_attrs;
struct module_notes_attrs;
struct ftrace_event_call;
struct module {
   enum module_state state ;
   struct list_head list ;
   char name[56U] ;
   struct module_kobject mkobj ;
   struct module_attribute *modinfo_attrs ;
   char const   *version ;
   char const   *srcversion ;
   struct kobject *holders_dir ;
   struct kernel_symbol  const  *syms ;
   unsigned long const   *crcs ;
   unsigned int num_syms ;
   struct kernel_param *kp ;
   unsigned int num_kp ;
   unsigned int num_gpl_syms ;
   struct kernel_symbol  const  *gpl_syms ;
   unsigned long const   *gpl_crcs ;
   struct kernel_symbol  const  *unused_syms ;
   unsigned long const   *unused_crcs ;
   unsigned int num_unused_syms ;
   unsigned int num_unused_gpl_syms ;
   struct kernel_symbol  const  *unused_gpl_syms ;
   unsigned long const   *unused_gpl_crcs ;
   struct kernel_symbol  const  *gpl_future_syms ;
   unsigned long const   *gpl_future_crcs ;
   unsigned int num_gpl_future_syms ;
   unsigned int num_exentries ;
   struct exception_table_entry *extable ;
   int (*init)(void) ;
   void *module_init ;
   void *module_core ;
   unsigned int init_size ;
   unsigned int core_size ;
   unsigned int init_text_size ;
   unsigned int core_text_size ;
   unsigned int init_ro_size ;
   unsigned int core_ro_size ;
   struct mod_arch_specific arch ;
   unsigned int taints ;
   unsigned int num_bugs ;
   struct list_head bug_list ;
   struct bug_entry *bug_table ;
   Elf64_Sym *symtab ;
   Elf64_Sym *core_symtab ;
   unsigned int num_symtab ;
   unsigned int core_num_syms ;
   char *strtab ;
   char *core_strtab ;
   struct module_sect_attrs *sect_attrs ;
   struct module_notes_attrs *notes_attrs ;
   char *args ;
   void *percpu ;
   unsigned int percpu_size ;
   unsigned int num_tracepoints ;
   struct tracepoint * const  *tracepoints_ptrs ;
   unsigned int num_trace_bprintk_fmt ;
   char const   **trace_bprintk_fmt_start ;
   struct ftrace_event_call **trace_events ;
   unsigned int num_trace_events ;
   unsigned int num_ftrace_callsites ;
   unsigned long *ftrace_callsites ;
   struct list_head source_list ;
   struct list_head target_list ;
   struct task_struct *waiter ;
   void (*exit)(void) ;
   struct module_ref *refptr ;
   ctor_fn_t (**ctors)(void) ;
   unsigned int num_ctors ;
};
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
};
struct dma_map_ops;
struct dev_archdata {
   void *acpi_handle ;
   struct dma_map_ops *dma_ops ;
   void *iommu ;
};
struct device_private;
struct device_driver;
struct driver_private;
struct class;
struct subsys_private;
struct bus_type;
struct device_node;
struct iommu_ops;
struct bus_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct bus_type * , char * ) ;
   ssize_t (*store)(struct bus_type * , char const   * , size_t  ) ;
};
struct device_attribute;
struct driver_attribute;
struct bus_type {
   char const   *name ;
   struct bus_attribute *bus_attrs ;
   struct device_attribute *dev_attrs ;
   struct driver_attribute *drv_attrs ;
   int (*match)(struct device * , struct device_driver * ) ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   int (*probe)(struct device * ) ;
   int (*remove)(struct device * ) ;
   void (*shutdown)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t  ) ;
   int (*resume)(struct device * ) ;
   struct dev_pm_ops  const  *pm ;
   struct iommu_ops *iommu_ops ;
   struct subsys_private *p ;
};
struct of_device_id;
struct device_driver {
   char const   *name ;
   struct bus_type *bus ;
   struct module *owner ;
   char const   *mod_name ;
   bool suppress_bind_attrs ;
   struct of_device_id  const  *of_match_table ;
   int (*probe)(struct device * ) ;
   int (*remove)(struct device * ) ;
   void (*shutdown)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t  ) ;
   int (*resume)(struct device * ) ;
   struct attribute_group  const  **groups ;
   struct dev_pm_ops  const  *pm ;
   struct driver_private *p ;
};
struct driver_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct device_driver * , char * ) ;
   ssize_t (*store)(struct device_driver * , char const   * , size_t  ) ;
};
struct class_attribute;
struct class {
   char const   *name ;
   struct module *owner ;
   struct class_attribute *class_attrs ;
   struct device_attribute *dev_attrs ;
   struct bin_attribute *dev_bin_attrs ;
   struct kobject *dev_kobj ;
   int (*dev_uevent)(struct device * , struct kobj_uevent_env * ) ;
   char *(*devnode)(struct device * , mode_t * ) ;
   void (*class_release)(struct class * ) ;
   void (*dev_release)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t  ) ;
   int (*resume)(struct device * ) ;
   struct kobj_ns_type_operations  const  *ns_type ;
   void const   *(*namespace)(struct device * ) ;
   struct dev_pm_ops  const  *pm ;
   struct subsys_private *p ;
};
struct device_type;
struct class_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct class * , struct class_attribute * , char * ) ;
   ssize_t (*store)(struct class * , struct class_attribute * , char const   * , size_t  ) ;
   void const   *(*namespace)(struct class * , struct class_attribute  const  * ) ;
};
struct device_type {
   char const   *name ;
   struct attribute_group  const  **groups ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   char *(*devnode)(struct device * , mode_t * ) ;
   void (*release)(struct device * ) ;
   struct dev_pm_ops  const  *pm ;
};
struct device_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct device * , struct device_attribute * , char * ) ;
   ssize_t (*store)(struct device * , struct device_attribute * , char const   * ,
                    size_t  ) ;
};
struct device_dma_parameters {
   unsigned int max_segment_size ;
   unsigned long segment_boundary_mask ;
};
struct dma_coherent_mem;
struct device {
   struct device *parent ;
   struct device_private *p ;
   struct kobject kobj ;
   char const   *init_name ;
   struct device_type  const  *type ;
   struct mutex mutex ;
   struct bus_type *bus ;
   struct device_driver *driver ;
   void *platform_data ;
   struct dev_pm_info power ;
   struct dev_pm_domain *pm_domain ;
   int numa_node ;
   u64 *dma_mask ;
   u64 coherent_dma_mask ;
   struct device_dma_parameters *dma_parms ;
   struct list_head dma_pools ;
   struct dma_coherent_mem *dma_mem ;
   struct dev_archdata archdata ;
   struct device_node *of_node ;
   dev_t devt ;
   spinlock_t devres_lock ;
   struct list_head devres_head ;
   struct klist_node knode_class ;
   struct class *class ;
   struct attribute_group  const  **groups ;
   void (*release)(struct device * ) ;
};
struct wakeup_source {
   char *name ;
   struct list_head entry ;
   spinlock_t lock ;
   struct timer_list timer ;
   unsigned long timer_expires ;
   ktime_t total_time ;
   ktime_t max_time ;
   ktime_t last_time ;
   unsigned long event_count ;
   unsigned long active_count ;
   unsigned long relax_count ;
   unsigned long hit_count ;
   unsigned char active : 1 ;
};
typedef unsigned long kernel_ulong_t;
struct of_device_id {
   char name[32U] ;
   char type[32U] ;
   char compatible[128U] ;
   void *data ;
};
struct spi_device_id {
   char name[32U] ;
   kernel_ulong_t driver_data ;
};
struct kmem_cache_cpu {
   void **freelist ;
   unsigned long tid ;
   struct page *page ;
   struct page *partial ;
   int node ;
   unsigned int stat[24U] ;
};
struct kmem_cache_node {
   spinlock_t list_lock ;
   unsigned long nr_partial ;
   struct list_head partial ;
   atomic_long_t nr_slabs ;
   atomic_long_t total_objects ;
   struct list_head full ;
};
struct kmem_cache_order_objects {
   unsigned long x ;
};
struct kmem_cache {
   struct kmem_cache_cpu *cpu_slab ;
   unsigned long flags ;
   unsigned long min_partial ;
   int size ;
   int objsize ;
   int offset ;
   int cpu_partial ;
   struct kmem_cache_order_objects oo ;
   struct kmem_cache_order_objects max ;
   struct kmem_cache_order_objects min ;
   gfp_t allocflags ;
   int refcount ;
   void (*ctor)(void * ) ;
   int inuse ;
   int align ;
   int reserved ;
   char const   *name ;
   struct list_head list ;
   struct kobject kobj ;
   int remote_node_defrag_ratio ;
   struct kmem_cache_node *node[1024U] ;
};
struct spi_master;
struct spi_device {
   struct device dev ;
   struct spi_master *master ;
   u32 max_speed_hz ;
   u8 chip_select ;
   u8 mode ;
   u8 bits_per_word ;
   int irq ;
   void *controller_state ;
   void *controller_data ;
   char modalias[32U] ;
};
struct spi_message;
struct spi_driver {
   struct spi_device_id  const  *id_table ;
   int (*probe)(struct spi_device * ) ;
   int (*remove)(struct spi_device * ) ;
   void (*shutdown)(struct spi_device * ) ;
   int (*suspend)(struct spi_device * , pm_message_t  ) ;
   int (*resume)(struct spi_device * ) ;
   struct device_driver driver ;
};
struct spi_master {
   struct device dev ;
   struct list_head list ;
   s16 bus_num ;
   u16 num_chipselect ;
   u16 dma_alignment ;
   u16 mode_bits ;
   u16 flags ;
   spinlock_t bus_lock_spinlock ;
   struct mutex bus_lock_mutex ;
   bool bus_lock_flag ;
   int (*setup)(struct spi_device * ) ;
   int (*transfer)(struct spi_device * , struct spi_message * ) ;
   void (*cleanup)(struct spi_device * ) ;
};
struct spi_transfer {
   void const   *tx_buf ;
   void *rx_buf ;
   unsigned int len ;
   dma_addr_t tx_dma ;
   dma_addr_t rx_dma ;
   unsigned char cs_change : 1 ;
   u8 bits_per_word ;
   u16 delay_usecs ;
   u32 speed_hz ;
   struct list_head transfer_list ;
};
struct spi_message {
   struct list_head transfers ;
   struct spi_device *spi ;
   unsigned char is_dma_mapped : 1 ;
   void (*complete)(void * ) ;
   void *context ;
   unsigned int actual_length ;
   int status ;
   struct list_head queue ;
   void *state ;
};
struct ks8995_pdata {

};
struct ks8995_switch {
   struct spi_device *spi ;
   struct mutex lock ;
   struct ks8995_pdata *pdata ;
};
struct ks8995_data;
long __builtin_expect(long exp , long c ) ;
__inline static void INIT_LIST_HEAD(struct list_head *list ) 
{ 


  {
  list->next = list;
  list->prev = list;
  return;
}
}
extern void __list_add(struct list_head * , struct list_head * , struct list_head * ) ;
__inline static void list_add_tail(struct list_head *new , struct list_head *head ) 
{ 


  {
  __list_add(new, head->prev, head);
  return;
}
}
extern int printk(char const   *  , ...) ;
extern void *memset(void * , int  , size_t  ) ;
extern void __mutex_init(struct mutex * , char const   * , struct lock_class_key * ) ;
extern void mutex_lock_nested(struct mutex * , unsigned int  ) ;
extern void mutex_unlock(struct mutex * ) ;
extern int sysfs_create_bin_file(struct kobject * , struct bin_attribute  const  * ) ;
extern void sysfs_remove_bin_file(struct kobject * , struct bin_attribute  const  * ) ;
extern struct module __this_module ;
extern void __const_udelay(unsigned long  ) ;
extern void driver_unregister(struct device_driver * ) ;
extern void *dev_get_drvdata(struct device  const  * ) ;
extern int dev_set_drvdata(struct device * , void * ) ;
extern struct device *get_device(struct device * ) ;
extern int dev_err(struct device  const  * , char const   *  , ...) ;
extern int _dev_info(struct device  const  * , char const   *  , ...) ;
extern void kfree(void const   * ) ;
extern void *__kmalloc(size_t  , gfp_t  ) ;
__inline static void *kmalloc(size_t size , gfp_t flags ) 
{ 
  void *tmp___2 ;

  {
  tmp___2 = __kmalloc(size, flags);
  return (tmp___2);
}
}
__inline static void *kzalloc(size_t size , gfp_t flags ) 
{ 
  void *tmp ;

  {
  tmp = kmalloc(size, flags | 32768U);
  return (tmp);
}
}
extern struct bus_type spi_bus_type ;
__inline static struct spi_device *spi_dev_get(struct spi_device *spi ) 
{ 
  struct spi_device *tmp___0 ;
  struct device *tmp___1 ;

  {
  if ((unsigned long )spi != (unsigned long )((struct spi_device *)0)) {
    tmp___1 = get_device(& spi->dev);
    if ((unsigned long )tmp___1 != (unsigned long )((struct device *)0)) {
      tmp___0 = spi;
    } else {
      tmp___0 = 0;
    }
  } else {
    tmp___0 = 0;
  }
  return (tmp___0);
}
}
extern int spi_register_driver(struct spi_driver * ) ;
__inline static void spi_unregister_driver(struct spi_driver *sdrv ) 
{ 


  {
  if ((unsigned long )sdrv != (unsigned long )((struct spi_driver *)0)) {
    driver_unregister(& sdrv->driver);
  } else {

  }
  return;
}
}
__inline static void spi_message_init(struct spi_message *m ) 
{ 


  {
  memset((void *)m, 0, 80UL);
  INIT_LIST_HEAD(& m->transfers);
  return;
}
}
__inline static void spi_message_add_tail(struct spi_transfer *t , struct spi_message *m ) 
{ 


  {
  list_add_tail(& t->transfer_list, & m->transfers);
  return;
}
}
extern int spi_setup(struct spi_device * ) ;
extern int spi_sync(struct spi_device * , struct spi_message * ) ;
__inline static u8 get_chip_id(u8 val ) 
{ 


  {
  return ((u8 )((int )val >> 4));
}
}
__inline static u8 get_chip_rev(u8 val ) 
{ 


  {
  return ((unsigned int )((u8 )((int )val >> 1)) & 7U);
}
}
static int ks8995_read(struct ks8995_switch *ks , char *buf , unsigned int offset ,
                       size_t count ) 
{ 
  u8 cmd[2U] ;
  struct spi_transfer t[2U] ;
  struct spi_message m ;
  int err ;

  {
  spi_message_init(& m);
  memset((void *)(& t), 0, 128UL);
  t[0].tx_buf = (void const   *)(& cmd);
  t[0].len = 2U;
  spi_message_add_tail((struct spi_transfer *)(& t), & m);
  t[1].rx_buf = (void *)buf;
  t[1].len = (unsigned int )count;
  spi_message_add_tail((struct spi_transfer *)(& t) + 1UL, & m);
  cmd[0] = 3U;
  cmd[1] = (u8 )offset;
  mutex_lock_nested(& ks->lock, 0U);
  err = spi_sync(ks->spi, & m);
  mutex_unlock(& ks->lock);
  return (err == 0 ? (int )count : err);
}
}
static int ks8995_write(struct ks8995_switch *ks , char *buf , unsigned int offset ,
                        size_t count ) 
{ 
  u8 cmd[2U] ;
  struct spi_transfer t[2U] ;
  struct spi_message m ;
  int err ;

  {
  spi_message_init(& m);
  memset((void *)(& t), 0, 128UL);
  t[0].tx_buf = (void const   *)(& cmd);
  t[0].len = 2U;
  spi_message_add_tail((struct spi_transfer *)(& t), & m);
  t[1].tx_buf = (void const   *)buf;
  t[1].len = (unsigned int )count;
  spi_message_add_tail((struct spi_transfer *)(& t) + 1UL, & m);
  cmd[0] = 2U;
  cmd[1] = (u8 )offset;
  mutex_lock_nested(& ks->lock, 0U);
  err = spi_sync(ks->spi, & m);
  mutex_unlock(& ks->lock);
  return (err == 0 ? (int )count : err);
}
}
__inline static int ks8995_write_reg(struct ks8995_switch *ks , u8 addr , u8 val ) 
{ 
  char buf ;
  int tmp ;

  {
  buf = (char )val;
  tmp = ks8995_write(ks, & buf, (unsigned int )addr, 1UL);
  return (tmp != 1);
}
}
static int ks8995_stop(struct ks8995_switch *ks ) 
{ 
  int tmp ;

  {
  tmp = ks8995_write_reg(ks, 1, 0);
  return (tmp);
}
}
static int ks8995_start(struct ks8995_switch *ks ) 
{ 
  int tmp ;

  {
  tmp = ks8995_write_reg(ks, 1, 1);
  return (tmp);
}
}
static int ks8995_reset(struct ks8995_switch *ks ) 
{ 
  int err ;
  int tmp ;

  {
  err = ks8995_stop(ks);
  if (err != 0) {
    return (err);
  } else {

  }
  __const_udelay(42950UL);
  tmp = ks8995_start(ks);
  return (tmp);
}
}
static ssize_t ks8995_registers_read(struct file *filp , struct kobject *kobj , struct bin_attribute *bin_attr ,
                                     char *buf , loff_t off , size_t count ) 
{ 
  struct device *dev ;
  struct ks8995_switch *ks8995 ;
  struct kobject  const  *__mptr ;
  void *tmp ;
  long tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;

  {
  __mptr = (struct kobject  const  *)kobj;
  dev = (struct device *)__mptr + 0xfffffffffffffff0UL;
  tmp = dev_get_drvdata((struct device  const  *)dev);
  ks8995 = (struct ks8995_switch *)tmp;
  tmp___0 = __builtin_expect(off > 128LL, 0L);
  if (tmp___0 != 0L) {
    return (0L);
  } else {

  }
  if ((unsigned long long )off + (unsigned long long )count > 128ULL) {
    count = (size_t )(128LL - off);
  } else {

  }
  tmp___1 = __builtin_expect(count == 0UL, 0L);
  if (tmp___1 != 0L) {
    return ((ssize_t )count);
  } else {

  }
  tmp___2 = ks8995_read(ks8995, buf, (unsigned int )off, count);
  return ((ssize_t )tmp___2);
}
}
static ssize_t ks8995_registers_write(struct file *filp , struct kobject *kobj , struct bin_attribute *bin_attr ,
                                      char *buf , loff_t off , size_t count ) 
{ 
  struct device *dev ;
  struct ks8995_switch *ks8995 ;
  struct kobject  const  *__mptr ;
  void *tmp ;
  long tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;

  {
  __mptr = (struct kobject  const  *)kobj;
  dev = (struct device *)__mptr + 0xfffffffffffffff0UL;
  tmp = dev_get_drvdata((struct device  const  *)dev);
  ks8995 = (struct ks8995_switch *)tmp;
  tmp___0 = __builtin_expect(off > 127LL, 0L);
  if (tmp___0 != 0L) {
    return (-27L);
  } else {

  }
  if ((unsigned long long )off + (unsigned long long )count > 128ULL) {
    count = (size_t )(128LL - off);
  } else {

  }
  tmp___1 = __builtin_expect(count == 0UL, 0L);
  if (tmp___1 != 0L) {
    return ((ssize_t )count);
  } else {

  }
  tmp___2 = ks8995_write(ks8995, buf, (unsigned int )off, count);
  return ((ssize_t )tmp___2);
}
}
static struct bin_attribute ks8995_registers_attr  =    {{"registers", 384U, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                             {(char)0}, {(char)0}, {(char)0}}}}, 128UL, 0, & ks8995_registers_read,
    & ks8995_registers_write, 0};
static int ks8995_probe(struct spi_device *spi ) 
{ 
  struct ks8995_switch *ks ;
  struct ks8995_pdata *pdata ;
  u8 ids[2U] ;
  int err ;
  void *tmp ;
  struct lock_class_key __key ;
  u8 tmp___0 ;
  u8 tmp___1 ;

  {
  pdata = (struct ks8995_pdata *)spi->dev.platform_data;
  tmp = kzalloc(184UL, 208U);
  ks = (struct ks8995_switch *)tmp;
  if ((unsigned long )ks == (unsigned long )((struct ks8995_switch *)0)) {
    dev_err((struct device  const  *)(& spi->dev), "no memory for private data\n");
    return (-12);
  } else {

  }
  __mutex_init(& ks->lock, "&ks->lock", & __key);
  ks->pdata = pdata;
  ks->spi = spi_dev_get(spi);
  dev_set_drvdata(& spi->dev, (void *)ks);
  spi->mode = 0U;
  spi->bits_per_word = 8U;
  err = spi_setup(spi);
  if (err != 0) {
    dev_err((struct device  const  *)(& spi->dev), "spi_setup failed, err=%d\n", err);
    goto err_drvdata;
  } else {

  }
  err = ks8995_read(ks, (char *)(& ids), 0U, 2UL);
  if (err < 0) {
    dev_err((struct device  const  *)(& spi->dev), "unable to read id registers, err=%d\n",
            err);
    goto err_drvdata;
  } else {

  }
  switch ((int )ids[0]) {
  case 149: ;
  goto ldv_15327;
  default: 
  dev_err((struct device  const  *)(& spi->dev), "unknown family id:%02x\n", (int )ids[0]);
  err = -19;
  goto err_drvdata;
  }
  ldv_15327: 
  err = ks8995_reset(ks);
  if (err != 0) {
    goto err_drvdata;
  } else {

  }
  err = sysfs_create_bin_file(& spi->dev.kobj, (struct bin_attribute  const  *)(& ks8995_registers_attr));
  if (err != 0) {
    dev_err((struct device  const  *)(& spi->dev), "unable to create sysfs file, err=%d\n",
            err);
    goto err_drvdata;
  } else {

  }
  tmp___0 = get_chip_rev((int )ids[1]);
  tmp___1 = get_chip_id((int )ids[1]);
  _dev_info((struct device  const  *)(& spi->dev), "KS89%02X device found, Chip ID:%01x, Revision:%01x\n",
            (int )ids[0], (int )tmp___1, (int )tmp___0);
  return (0);
  err_drvdata: 
  dev_set_drvdata(& spi->dev, 0);
  kfree((void const   *)ks);
  return (err);
}
}
static int ks8995_remove(struct spi_device *spi ) 
{ 
  struct ks8995_data *ks8995 ;
  void *tmp ;

  {
  tmp = dev_get_drvdata((struct device  const  *)(& spi->dev));
  ks8995 = (struct ks8995_data *)tmp;
  sysfs_remove_bin_file(& spi->dev.kobj, (struct bin_attribute  const  *)(& ks8995_registers_attr));
  dev_set_drvdata(& spi->dev, 0);
  kfree((void const   *)ks8995);
  return (0);
}
}
static struct spi_driver ks8995_driver  =    {0, & ks8995_probe, & ks8995_remove, 0, 0, 0, {"spi-ks8995", & spi_bus_type, & __this_module,
                                                  0, (_Bool)0, 0, 0, 0, 0, 0, 0, 0,
                                                  0, 0}};
static int ks8995_init(void) 
{ 
  int tmp ;

  {
  printk("<6>Micrel KS8995 Ethernet switch SPI driver version 0.1.1\n");
  tmp = spi_register_driver(& ks8995_driver);
  return (tmp);
}
}
static void ks8995_exit(void) 
{ 


  {
  spi_unregister_driver(& ks8995_driver);
  return;
}
}
void ldv_check_final_state(void) ;
extern void ldv_check_return_value(int  ) ;
extern void ldv_check_return_value_probe(int  ) ;
extern void ldv_initialize(void) ;
extern void ldv_handler_precall(void) ;
extern int nondet_int(void) ;
int LDV_IN_INTERRUPT  ;
int main(void) 
{ 
  struct file *var_group1 ;
  struct kobject *var_group2 ;
  struct bin_attribute *var_ks8995_registers_read_9_p2 ;
  char *var_ks8995_registers_read_9_p3 ;
  loff_t var_ks8995_registers_read_9_p4 ;
  size_t var_ks8995_registers_read_9_p5 ;
  struct bin_attribute *var_ks8995_registers_write_10_p2 ;
  char *var_ks8995_registers_write_10_p3 ;
  loff_t var_ks8995_registers_write_10_p4 ;
  size_t var_ks8995_registers_write_10_p5 ;
  struct spi_device *var_group3 ;
  int res_ks8995_probe_11 ;
  int ldv_s_ks8995_driver_spi_driver ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;

  {
  ldv_s_ks8995_driver_spi_driver = 0;
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  ldv_handler_precall();
  tmp = ks8995_init();
  if (tmp != 0) {
    goto ldv_final;
  } else {

  }
  goto ldv_15393;
  ldv_15392: 
  tmp___0 = nondet_int();
  switch (tmp___0) {
  case 0: 
  ldv_handler_precall();
  ks8995_registers_read(var_group1, var_group2, var_ks8995_registers_read_9_p2, var_ks8995_registers_read_9_p3,
                        var_ks8995_registers_read_9_p4, var_ks8995_registers_read_9_p5);
  goto ldv_15386;
  case 1: 
  ldv_handler_precall();
  ks8995_registers_write(var_group1, var_group2, var_ks8995_registers_write_10_p2,
                         var_ks8995_registers_write_10_p3, var_ks8995_registers_write_10_p4,
                         var_ks8995_registers_write_10_p5);
  goto ldv_15386;
  case 2: ;
  if (ldv_s_ks8995_driver_spi_driver == 0) {
    res_ks8995_probe_11 = ks8995_probe(var_group3);
    ldv_check_return_value(res_ks8995_probe_11);
    ldv_check_return_value_probe(res_ks8995_probe_11);
    if (res_ks8995_probe_11 != 0) {
      goto ldv_module_exit;
    } else {

    }
    ldv_s_ks8995_driver_spi_driver = ldv_s_ks8995_driver_spi_driver + 1;
  } else {

  }
  goto ldv_15386;
  case 3: ;
  if (ldv_s_ks8995_driver_spi_driver == 1) {
    ldv_handler_precall();
    ks8995_remove(var_group3);
    ldv_s_ks8995_driver_spi_driver = 0;
  } else {

  }
  goto ldv_15386;
  default: ;
  goto ldv_15386;
  }
  ldv_15386: ;
  ldv_15393: 
  tmp___1 = nondet_int();
  if (tmp___1 != 0 || ldv_s_ks8995_driver_spi_driver != 0) {
    goto ldv_15392;
  } else {

  }

  ldv_module_exit: 
  ldv_handler_precall();
  ks8995_exit();
  ldv_final: 
  ldv_check_final_state();
  return 0;
}
}
__inline static void ldv_error(void) 
{ 


  {
  LDV_ERROR: __VERIFIER_error();
}
}
extern int ldv_undef_int(void) ;
long __builtin_expect(long exp , long c ) 
{ 


  {
  return (exp);
}
}
int ldv_module_refcounter  =    1;
void ldv_module_get(struct module *module ) 
{ 


  {
  if (module) {
    ldv_module_refcounter = ldv_module_refcounter + 1;
  } else {

  }
  return;
}
}
int ldv_try_module_get(struct module *module ) 
{ 
  int module_get_succeeded ;

  {
  if (module) {
    module_get_succeeded = ldv_undef_int();
    if (module_get_succeeded == 1) {
      ldv_module_refcounter = ldv_module_refcounter + 1;
      return (1);
    } else {
      return (0);
    }
  } else {

  }
  return (0);
}
}
void ldv_module_put(struct module *module ) 
{ 


  {
  if (module) {
    if (ldv_module_refcounter > 1) {

    } else {
      ldv_error();
    }
    ldv_module_refcounter = ldv_module_refcounter - 1;
  } else {

  }
  return;
}
}
void ldv_module_put_and_exit(void) 
{ 


  {
  ldv_module_put((struct module *)1);
  LDV_STOP: 
  goto LDV_STOP;
}
}
unsigned int ldv_module_refcount(void) 
{ 


  {
  return (ldv_module_refcounter - 1);
}
}
void ldv_check_final_state(void) 
{ 


  {
  if (ldv_module_refcounter == 1) {

  } else {
    ldv_error();
  }
  return;
}
}
