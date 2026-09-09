.class public final Lcom/deepalhome/launcher/view/DragLinearLayout$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic this$0:Lcom/deepalhome/launcher/view/DragLinearLayout;

.field public final synthetic val$originalPosition:I

.field public final synthetic val$switchView:Landroid/view/View;

.field public final synthetic val$switchViewObserver:Landroid/view/ViewTreeObserver;

.field public final synthetic val$switchViewStartPos:F


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/view/DragLinearLayout;Landroid/view/ViewTreeObserver;FLandroid/view/View;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$4;->this$0:Lcom/deepalhome/launcher/view/DragLinearLayout;

    iput-object p2, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$4;->val$switchViewObserver:Landroid/view/ViewTreeObserver;

    iput p3, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$4;->val$switchViewStartPos:F

    iput-object p4, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$4;->val$switchView:Landroid/view/View;

    iput p5, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$4;->val$originalPosition:I

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 10

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$4;->val$switchViewObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$4;->this$0:Lcom/deepalhome/launcher/view/DragLinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v2

    iget-object v3, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$4;->val$switchView:Landroid/view/View;

    iget v4, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$4;->val$switchViewStartPos:F

    if-eqz v2, :cond_1

    const-string v5, "y"

    if-eq v2, v0, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    const-string v5, "x"

    :goto_0
    sub-float v6, v2, v4

    invoke-static {v1, v6}, Lcom/deepalhome/launcher/view/DragLinearLayout;->access$1600(Lcom/deepalhome/launcher/view/DragLinearLayout;F)J

    move-result-wide v6

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    aput v4, v8, v9

    aput v2, v8, v0

    invoke-static {v3, v5, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v4, Lcom/deepalhome/launcher/view/DragLinearLayout$4$1;

    invoke-direct {v4, p0, v2}, Lcom/deepalhome/launcher/view/DragLinearLayout$4$1;-><init>(Lcom/deepalhome/launcher/view/DragLinearLayout$4;Landroid/animation/ObjectAnimator;)V

    invoke-virtual {v2, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    invoke-static {v1}, Lcom/deepalhome/launcher/view/DragLinearLayout;->access$2100(Lcom/deepalhome/launcher/view/DragLinearLayout;)Lcom/deepalhome/launcher/view/DragLinearLayout$Callback;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-static {v1}, Lcom/deepalhome/launcher/view/DragLinearLayout;->access$2100(Lcom/deepalhome/launcher/view/DragLinearLayout;)Lcom/deepalhome/launcher/view/DragLinearLayout$Callback;

    move-result-object p0

    invoke-static {v1}, Lcom/deepalhome/launcher/view/DragLinearLayout;->access$1000(Lcom/deepalhome/launcher/view/DragLinearLayout;)Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;

    move-result-object v2

    iget-object v2, v2, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->view:Landroid/view/View;

    invoke-static {v1}, Lcom/deepalhome/launcher/view/DragLinearLayout;->access$1000(Lcom/deepalhome/launcher/view/DragLinearLayout;)Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;

    move-result-object v1

    iget v1, v1, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->position:I

    check-cast p0, Lcom/deepalhome/launcher/window/WindowsView$configureDragContainer$2;

    iget-object p0, p0, Lcom/deepalhome/launcher/window/WindowsView$configureDragContainer$2;->this$0:Lcom/deepalhome/launcher/window/WindowsView;

    invoke-static {p0}, Lcom/deepalhome/launcher/window/WindowsView;->access$getWindows$p(Lcom/deepalhome/launcher/window/WindowsView;)Ljava/util/List;

    move-result-object v1

    const-string v4, "<this>"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {p0}, Lcom/deepalhome/launcher/window/WindowsView;->access$getWindows$p(Lcom/deepalhome/launcher/window/WindowsView;)Ljava/util/List;

    move-result-object v2

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v1, v3, :cond_5

    if-eq v2, v3, :cond_5

    invoke-static {p0}, Lcom/deepalhome/launcher/window/WindowsView;->access$getWindows$p(Lcom/deepalhome/launcher/window/WindowsView;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0, v1, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    sget-object p0, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/UserConfig;->getWindowApps()Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/window/WindowInfo;

    invoke-virtual {v3}, Lcom/deepalhome/launcher/window/WindowInfo;->getPosition()I

    move-result v4

    if-ne v4, v1, :cond_3

    invoke-virtual {v3, v2}, Lcom/deepalhome/launcher/window/WindowInfo;->setPosition(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lcom/deepalhome/launcher/window/WindowInfo;->getPosition()I

    move-result v4

    if-ne v4, v2, :cond_2

    invoke-virtual {v3, v1}, Lcom/deepalhome/launcher/window/WindowInfo;->setPosition(I)V

    goto :goto_1

    :cond_4
    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/deepalhome/launcher/config/UserConfig;->swapPipApps(II)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/UserConfig;->getWindowApps()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/deepalhome/launcher/config/UserConfig;->setWindowApps(Ljava/util/ArrayList;)V

    :cond_5
    return v0
.end method
