#include <linux/module.h>       /* Needed by all modules */
#include <linux/kernel.h>       /* Needed for KERN_LOGLEVEL_MESSAGES */
#include <linux/init.h>         /* Needed for the macros */

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Mayur Patil");
MODULE_DESCRIPTION("Hello World module");
MODULE_VERSION("v0.1");

static int __init hello_start(void){
printk(KERN_DEBUG "Loading hello module...\n");
printk(KERN_DEBUG "Hello world\n");
return 0;
}

static void __exit hello_end(void){
printk(KERN_DEBUG "End of Hello World Kernel Module\n");
printk(KERN_DEBUG "DEBUG IS SUCCESSFUL\n");
}

module_init(hello_start);
module_exit(hello_end);
