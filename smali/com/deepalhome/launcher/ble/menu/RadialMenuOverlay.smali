.class public final Lcom/deepalhome/launcher/ble/menu/RadialMenuOverlay;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final activity:Landroid/app/Activity;

.field public container:Landroid/widget/FrameLayout;

.field public isShowing:Z

.field public menuView:Lcom/deepalhome/launcher/ble/menu/RadialMenuView;

.field public final onTapBlank:Lkotlin/jvm/functions/Function0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/ble/menu/RadialMenuOverlay$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/ble/menu/RadialMenuOverlay$Companion;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/deepalhome/launcher/ble/menu/RadialMenuManager$showMenu$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/ble/menu/RadialMenuOverlay;->activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/deepalhome/launcher/ble/menu/RadialMenuOverlay;->onTapBlank:Lkotlin/jvm/functions/Function0;

    return-void
.end method
