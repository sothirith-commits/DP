.class public final Lcom/deepalhome/launcher/app/AppCenterView$buildAppListPage$1$4;
.super Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/deepalhome/launcher/app/AppCenterView;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/app/AppCenterView;I)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/app/AppCenterView$buildAppListPage$1$4;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/app/AppCenterView$buildAppListPage$1$4;->this$0:Lcom/deepalhome/launcher/app/AppCenterView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 3

    iget v0, p0, Lcom/deepalhome/launcher/app/AppCenterView$buildAppListPage$1$4;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "rv"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "event"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/app/AppCenterView$buildAppListPage$1$4;->this$0:Lcom/deepalhome/launcher/app/AppCenterView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/app/AppCenterView;->isEditMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_0

    invoke-static {p0, v1}, Lcom/deepalhome/launcher/app/AppCenterView;->access$dismissSelf(Lcom/deepalhome/launcher/app/AppCenterView;Z)V

    :cond_0
    return v1

    :pswitch_0
    const-string v0, "rv"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "event"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/app/AppCenterView$buildAppListPage$1$4;->this$0:Lcom/deepalhome/launcher/app/AppCenterView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/app/AppCenterView;->isEditMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_1

    invoke-static {p0, v1}, Lcom/deepalhome/launcher/app/AppCenterView;->access$dismissSelf(Lcom/deepalhome/launcher/app/AppCenterView;Z)V

    :cond_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
