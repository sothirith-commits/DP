.class public final Lcom/blankj/utilcode/util/ToastUtils$ActivityToast$2;
.super Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;

.field public final synthetic val$index:I


# direct methods
.method public constructor <init>(Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;I)V
    .locals 0

    iput-object p1, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast$2;->this$0:Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;

    iput p2, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast$2;->val$index:I

    invoke-direct {p0}, Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast$2;->this$0:Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;

    iget-object v1, v0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->mActivityLifecycleCallbacks:Ljava/lang/Object;

    check-cast v1, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast$2;

    if-eqz v1, :cond_0

    iget p0, p0, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast$2;->val$index:I

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;->showWithActivityView(Landroid/app/Activity;IZ)V

    :cond_0
    return-void
.end method
