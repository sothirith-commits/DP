.class public final Lcom/blankj/utilcode/util/ToastUtils$SystemToast;
.super Lcom/blankj/utilcode/util/ToastUtils$AbsToast;
.source "SourceFile"


# virtual methods
.method public final show(I)V
    .locals 1

    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setDuration(I)V

    iget-object p0, p0, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
