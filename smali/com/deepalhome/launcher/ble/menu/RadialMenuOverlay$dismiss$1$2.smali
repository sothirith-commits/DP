.class public final Lcom/deepalhome/launcher/ble/menu/RadialMenuOverlay$dismiss$1$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic $frame:Landroid/widget/FrameLayout;

.field public final synthetic $onDismissed:Lkotlin/jvm/functions/Function0;

.field public final synthetic this$0:Lcom/deepalhome/launcher/ble/menu/RadialMenuOverlay;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/ble/menu/RadialMenuOverlay;Landroid/widget/FrameLayout;Lcom/deepalhome/launcher/ble/menu/RadialMenuManager$hideMenu$1;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/ble/menu/RadialMenuOverlay$dismiss$1$2;->this$0:Lcom/deepalhome/launcher/ble/menu/RadialMenuOverlay;

    iput-object p2, p0, Lcom/deepalhome/launcher/ble/menu/RadialMenuOverlay$dismiss$1$2;->$frame:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/deepalhome/launcher/ble/menu/RadialMenuOverlay$dismiss$1$2;->$onDismissed:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const-string v0, "animation"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/ble/menu/RadialMenuOverlay$dismiss$1$2;->this$0:Lcom/deepalhome/launcher/ble/menu/RadialMenuOverlay;

    iget-object v0, p1, Lcom/deepalhome/launcher/ble/menu/RadialMenuOverlay;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/deepalhome/launcher/ble/menu/RadialMenuOverlay$dismiss$1$2;->$frame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iput-object v2, p1, Lcom/deepalhome/launcher/ble/menu/RadialMenuOverlay;->container:Landroid/widget/FrameLayout;

    iput-object v2, p1, Lcom/deepalhome/launcher/ble/menu/RadialMenuOverlay;->menuView:Lcom/deepalhome/launcher/ble/menu/RadialMenuView;

    iget-object p0, p0, Lcom/deepalhome/launcher/ble/menu/RadialMenuOverlay$dismiss$1$2;->$onDismissed:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_2
    return-void
.end method
