.class public final Lcom/umeng/commonsdk/UMConfigure$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic a:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/umeng/commonsdk/UMConfigure$1;->$r8$classId:I

    iput-object p2, p0, Lcom/umeng/commonsdk/UMConfigure$1;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/umeng/commonsdk/UMConfigure$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/umeng/commonsdk/UMConfigure$1;->a:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    :pswitch_0
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object p0, p0, Lcom/umeng/commonsdk/UMConfigure$1;->a:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    const-string v0, "Base component library 9.3.x version only supports Push SDK 6.2.0 and above, and Share SDK 7.1.0 and above."

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void

    :pswitch_1
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object p0, p0, Lcom/umeng/commonsdk/UMConfigure$1;->a:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    const-string v0, "Base component library 9.3.x version only supports Push SDK 6.2.0 and above, and Share SDK 7.1.0 and above."

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    return-void

    :pswitch_2
    :try_start_2
    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object p0, p0, Lcom/umeng/commonsdk/UMConfigure$1;->a:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    const-string v0, "SDK initialization failed, please check whether the umeng-asms-1.2.X.aar library is integrated."

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method