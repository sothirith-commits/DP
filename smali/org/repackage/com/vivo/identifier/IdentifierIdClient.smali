.class public final Lorg/repackage/com/vivo/identifier/IdentifierIdClient;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static B:Lorg/repackage/com/vivo/identifier/IdentifierIdObserver;

.field public static F:Landroid/os/HandlerThread;

.field public static G:Lcom/umeng/ccg/c$1;

.field public static H:Ljava/lang/String;

.field public static I:Ljava/lang/String;

.field public static J:Ljava/lang/String;

.field public static volatile O:Lorg/repackage/com/vivo/identifier/IdentifierIdClient;

.field public static volatile P:Lcom/umeng/commonsdk/stateless/c;

.field public static R:I

.field public static S:I

.field public static T:I

.field public static U:I

.field public static V:I

.field public static W:I

.field public static X:I

.field public static Y:I

.field public static Z:I

.field public static aa:I

.field public static ab:I

.field public static ac:I

.field public static final k:Ljava/lang/Object;

.field public static y:Landroid/content/Context;

.field public static z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->k:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Landroid/os/HandlerThread;

    const-string v0, "SqlWorkThread"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object p0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->F:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    new-instance p0, Lcom/umeng/ccg/c$1;

    sget-object v0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->F:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/umeng/ccg/c$1;-><init>(Landroid/os/Looper;I)V

    sput-object p0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->G:Lcom/umeng/ccg/c$1;

    new-instance p0, Lcom/umeng/commonsdk/stateless/c;

    sget-object v0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->y:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/umeng/commonsdk/stateless/c;->c:Landroid/content/Context;

    sput-object p0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->P:Lcom/umeng/commonsdk/stateless/c;

    sget-object p0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->y:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    :try_start_0
    const-string v0, "com.vivo.vms"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "0"

    const-class v1, Ljava/lang/String;

    const-string v2, "getProperty: invoke is error"

    :try_start_0
    const-string v3, "android.os.SystemProperties"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "get"

    filled-new-array {v1, v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v3, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catch_0
    move-exception p0

    :try_start_1
    const-string v1, "VMS_SDK_Client"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-object v0
.end method

.method public static a(Lorg/repackage/com/vivo/identifier/IdentifierIdClient;IIII)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p2, ";"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(ILjava/lang/String;)V
    .locals 3

    sget-object v0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->G:Lcom/umeng/ccg/c$1;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xb

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "type"

    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 v2, 0x1

    if-eq p0, v2, :cond_0

    const/4 v2, 0x2

    if-eq p0, v2, :cond_0

    const/4 v2, 0x6

    if-ne p0, v2, :cond_1

    :cond_0
    const-string p0, "appid"

    invoke-virtual {v1, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    sget-object p0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->G:Lcom/umeng/ccg/c$1;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static a()Z
    .locals 2

    sget-boolean v0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->z:Z

    if-nez v0, :cond_2

    const-string v0, "persist.sys.identifierid.supported"

    invoke-static {v0}, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "persist.sys.identifierid"

    invoke-static {v0}, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->z:Z

    :cond_2
    sget-boolean v0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->z:Z

    return v0
.end method

.method public static b(Landroid/content/Context;)Lorg/repackage/com/vivo/identifier/IdentifierIdClient;
    .locals 9

    invoke-static {}, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->y:Landroid/content/Context;

    if-nez v0, :cond_3

    if-nez p0, :cond_1

    goto :goto_4

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move-object p0, v0

    :goto_0
    sput-object p0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->y:Landroid/content/Context;

    :cond_3
    sget-object p0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->O:Lorg/repackage/com/vivo/identifier/IdentifierIdClient;

    if-nez p0, :cond_5

    const-class p0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->O:Lorg/repackage/com/vivo/identifier/IdentifierIdClient;

    if-nez v0, :cond_4

    new-instance v0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;

    invoke-direct {v0}, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;-><init>()V

    sput-object v0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->O:Lorg/repackage/com/vivo/identifier/IdentifierIdClient;

    sget-object v0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->O:Lorg/repackage/com/vivo/identifier/IdentifierIdClient;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    new-instance v3, Lme/wcy/lrcview/LrcView$5;

    const/16 v1, 0xb

    invoke-direct {v3, v1, v0}, Lme/wcy/lrcview/LrcView$5;-><init>(ILjava/lang/Object;)V

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x258

    const-wide/16 v6, 0x258

    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_4
    :goto_1
    monitor-exit p0

    goto :goto_3

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    :goto_3
    sget-object v1, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->O:Lorg/repackage/com/vivo/identifier/IdentifierIdClient;

    :goto_4
    return-object v1
.end method

.method public static c(ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_7

    if-eq p0, v0, :cond_5

    const/4 v1, 0x2

    if-eq p0, v1, :cond_3

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-nez p1, :cond_0

    sget p0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->ac:I

    add-int/2addr p0, v0

    sput p0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->ac:I

    goto :goto_0

    :cond_0
    sget p0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->ab:I

    add-int/2addr p0, v0

    sput p0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->ab:I

    goto :goto_0

    :pswitch_1
    if-nez p1, :cond_1

    sget p0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->aa:I

    add-int/2addr p0, v0

    sput p0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->aa:I

    goto :goto_0

    :cond_1
    sget p0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->Z:I

    add-int/2addr p0, v0

    sput p0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->Z:I

    goto :goto_0

    :pswitch_2
    if-nez p1, :cond_2

    sget p0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->Y:I

    add-int/2addr p0, v0

    sput p0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->Y:I

    goto :goto_0

    :cond_2
    sget p0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->X:I

    add-int/2addr p0, v0

    sput p0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->X:I

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    sget p0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->W:I

    add-int/2addr p0, v0

    sput p0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->W:I

    goto :goto_0

    :cond_4
    sget p0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->V:I

    add-int/2addr p0, v0

    sput p0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->V:I

    goto :goto_0

    :cond_5
    if-nez p1, :cond_6

    sget p0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->U:I

    add-int/2addr p0, v0

    sput p0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->U:I

    goto :goto_0

    :cond_6
    sget p0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->T:I

    add-int/2addr p0, v0

    sput p0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->T:I

    goto :goto_0

    :cond_7
    if-nez p1, :cond_8

    sget p0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->S:I

    add-int/2addr p0, v0

    sput p0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->S:I

    goto :goto_0

    :cond_8
    sget p0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->R:I

    add-int/2addr p0, v0

    sput p0, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->R:I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
