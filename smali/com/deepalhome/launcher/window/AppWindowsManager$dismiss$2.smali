.class public final Lcom/deepalhome/launcher/window/AppWindowsManager$dismiss$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $view:Lcom/deepalhome/launcher/window/WindowsView;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/window/WindowsView;I)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/window/AppWindowsManager$dismiss$2;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/window/AppWindowsManager$dismiss$2;->$view:Lcom/deepalhome/launcher/window/WindowsView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    iget-object p0, p0, Lcom/deepalhome/launcher/window/AppWindowsManager$dismiss$2;->$view:Lcom/deepalhome/launcher/window/WindowsView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/window/WindowsView;->updateBlurAlpha(F)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/window/WindowsView;->finishBlurUpdate()V

    const/4 p0, 0x0

    sput-boolean p0, Lcom/deepalhome/launcher/window/AppWindowsManager;->isAnimating:Z

    sget-object p0, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/window/AppWindowsManager;->onWindowsChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/window/AppWindowsManager$OnWindowsChangedListeners;

    invoke-interface {v0}, Lcom/deepalhome/launcher/window/AppWindowsManager$OnWindowsChangedListeners;->onWindowsDismiss()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget v0, p0, Lcom/deepalhome/launcher/window/AppWindowsManager$dismiss$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    return-void

    :pswitch_0
    const-string v0, "animation"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lcom/deepalhome/launcher/window/AppWindowsManager;->isAnimating:Z

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    sput-boolean p1, Lcom/deepalhome/launcher/window/AppWindowsManager;->isAnimating:Z

    const/high16 p1, 0x3f800000    # 1.0f

    iget-object p0, p0, Lcom/deepalhome/launcher/window/AppWindowsManager$dismiss$2;->$view:Lcom/deepalhome/launcher/window/WindowsView;

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/window/WindowsView;->updateBlurAlpha(F)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/window/WindowsView;->finishBlurUpdate()V

    sget-object p0, Lcom/deepalhome/launcher/window/AppWindowsManager;->onWindowsChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/window/AppWindowsManager$OnWindowsChangedListeners;

    invoke-interface {p1}, Lcom/deepalhome/launcher/window/AppWindowsManager$OnWindowsChangedListeners;->onWindowsShowComplete()V

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :pswitch_1
    const-string v0, "animation"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/window/AppWindowsManager$dismiss$2;->finish()V

    return-void

    :pswitch_2
    const-string v0, "animation"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lcom/deepalhome/launcher/window/AppWindowsManager;->isAnimating:Z

    if-nez p1, :cond_2

    goto :goto_3

    :cond_2
    const/4 p1, 0x0

    sput-boolean p1, Lcom/deepalhome/launcher/window/AppWindowsManager;->isAnimating:Z

    const/high16 p1, 0x3f800000    # 1.0f

    iget-object p0, p0, Lcom/deepalhome/launcher/window/AppWindowsManager$dismiss$2;->$view:Lcom/deepalhome/launcher/window/WindowsView;

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/window/WindowsView;->updateBlurAlpha(F)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/window/WindowsView;->finishBlurUpdate()V

    sget-object p0, Lcom/deepalhome/launcher/window/AppWindowsManager;->onWindowsChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/window/AppWindowsManager$OnWindowsChangedListeners;

    invoke-interface {p1}, Lcom/deepalhome/launcher/window/AppWindowsManager$OnWindowsChangedListeners;->onWindowsShowComplete()V

    goto :goto_2

    :cond_3
    :goto_3
    return-void

    :pswitch_3
    const-string v0, "animation"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/deepalhome/launcher/window/AppWindowsManager$dismiss$2;->$view:Lcom/deepalhome/launcher/window/WindowsView;

    invoke-static {p0}, Lcom/deepalhome/launcher/window/AppWindowsManager;->completeDismiss(Lcom/deepalhome/launcher/window/WindowsView;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget v0, p0, Lcom/deepalhome/launcher/window/AppWindowsManager$dismiss$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "animation"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/window/AppWindowsManager$dismiss$2;->$view:Lcom/deepalhome/launcher/window/WindowsView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WindowsViewBinding;->windowContainer:Lcom/deepalhome/launcher/view/DragLinearLayout;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-static {p0}, Lcom/deepalhome/launcher/window/WindowsView;->access$endDrag(Lcom/deepalhome/launcher/window/WindowsView;)V

    return-void

    :pswitch_0
    const-string v0, "animation"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lcom/deepalhome/launcher/window/AppWindowsManager;->isAnimating:Z

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    sput-boolean p1, Lcom/deepalhome/launcher/window/AppWindowsManager;->isAnimating:Z

    const/high16 p1, 0x3f800000    # 1.0f

    iget-object p0, p0, Lcom/deepalhome/launcher/window/AppWindowsManager$dismiss$2;->$view:Lcom/deepalhome/launcher/window/WindowsView;

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/window/WindowsView;->updateBlurAlpha(F)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/window/WindowsView;->finishBlurUpdate()V

    sget-object p0, Lcom/deepalhome/launcher/window/AppWindowsManager;->onWindowsChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/window/AppWindowsManager$OnWindowsChangedListeners;

    invoke-interface {p1}, Lcom/deepalhome/launcher/window/AppWindowsManager$OnWindowsChangedListeners;->onWindowsShowComplete()V

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :pswitch_1
    const-string v0, "animation"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/window/AppWindowsManager$dismiss$2;->finish()V

    return-void

    :pswitch_2
    const-string v0, "animation"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lcom/deepalhome/launcher/window/AppWindowsManager;->isAnimating:Z

    if-nez p1, :cond_2

    goto :goto_3

    :cond_2
    const/4 p1, 0x0

    sput-boolean p1, Lcom/deepalhome/launcher/window/AppWindowsManager;->isAnimating:Z

    const/high16 p1, 0x3f800000    # 1.0f

    iget-object p0, p0, Lcom/deepalhome/launcher/window/AppWindowsManager$dismiss$2;->$view:Lcom/deepalhome/launcher/window/WindowsView;

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/window/WindowsView;->updateBlurAlpha(F)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/window/WindowsView;->finishBlurUpdate()V

    sget-object p0, Lcom/deepalhome/launcher/window/AppWindowsManager;->onWindowsChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/window/AppWindowsManager$OnWindowsChangedListeners;

    invoke-interface {p1}, Lcom/deepalhome/launcher/window/AppWindowsManager$OnWindowsChangedListeners;->onWindowsShowComplete()V

    goto :goto_2

    :cond_3
    :goto_3
    return-void

    :pswitch_3
    const-string v0, "animation"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/deepalhome/launcher/window/AppWindowsManager$dismiss$2;->$view:Lcom/deepalhome/launcher/window/WindowsView;

    invoke-static {p0}, Lcom/deepalhome/launcher/window/AppWindowsManager;->completeDismiss(Lcom/deepalhome/launcher/window/WindowsView;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget v0, p0, Lcom/deepalhome/launcher/window/AppWindowsManager$dismiss$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void

    :pswitch_0
    const-string v0, "animation"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/window/AppWindowsManager$dismiss$2;->$view:Lcom/deepalhome/launcher/window/WindowsView;

    invoke-static {p0}, Lcom/deepalhome/launcher/window/WindowsView;->access$startDrag(Lcom/deepalhome/launcher/window/WindowsView;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
