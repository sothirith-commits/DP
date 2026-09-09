.class public final Lcom/umeng/commonsdk/framework/a$a;
.super Landroid/os/FileObserver;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput p2, p0, Lcom/umeng/commonsdk/framework/a$a;->$r8$classId:I

    invoke-direct {p0, p1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onEvent(ILjava/lang/String;)V
    .locals 0

    iget p0, p0, Lcom/umeng/commonsdk/framework/a$a;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const/16 p0, 0x8

    and-int/2addr p1, p0

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "--->>> envelope file created >>> "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MobclickRT"

    invoke-static {p1, p0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean p0, Lcom/umeng/commonsdk/stateless/b;->k:Z

    if-eqz p0, :cond_1

    sget-object p0, Lcom/umeng/commonsdk/stateless/b;->d:Lcom/umeng/ccg/c$1;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    const/16 p1, 0x112

    iput p1, p0, Landroid/os/Message;->what:I

    sget-object p1, Lcom/umeng/commonsdk/stateless/b;->d:Lcom/umeng/ccg/c$1;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    const/16 p0, 0x8

    and-int/2addr p1, p0

    if-eq p1, p0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "--->>> envelope file created >>> "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MobclickRT"

    invoke-static {p1, p0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean p0, Lcom/umeng/commonsdk/framework/a;->l:Z

    if-eqz p0, :cond_3

    sget-object p0, Lcom/umeng/commonsdk/framework/a;->b:Lcom/umeng/ccg/c$1;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    const/16 p1, 0x111

    iput p1, p0, Landroid/os/Message;->what:I

    sget-object p1, Lcom/umeng/commonsdk/framework/a;->b:Lcom/umeng/ccg/c$1;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
