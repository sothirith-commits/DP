.class public final Lcom/deepalhome/launcher/HelperActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final adbWifiReceiver:Lcom/deepalhome/launcher/HelperActivity$adbWifiReceiver$1;

.field public binding:Lcom/deepalhome/launcher/databinding/HelperActivityBinding;

.field public currentDialog:Landroidx/appcompat/app/AlertDialog;

.field public currentTimer:Landroid/os/CountDownTimer;

.field public isAuthorizing:Z

.field public isDialogShowing:Z

.field public lastWirelessDebugClickTime:J

.field public sessionId:I

.field public final uiModeChangedListener:Lcom/deepalhome/launcher/HelperActivity$uiModeChangedListener$1;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Lcom/deepalhome/launcher/HelperActivity$uiModeChangedListener$1;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/HelperActivity$uiModeChangedListener$1;-><init>(Lcom/deepalhome/launcher/HelperActivity;)V

    iput-object v0, p0, Lcom/deepalhome/launcher/HelperActivity;->uiModeChangedListener:Lcom/deepalhome/launcher/HelperActivity$uiModeChangedListener$1;

    new-instance v0, Lcom/deepalhome/launcher/HelperActivity$adbWifiReceiver$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/deepalhome/launcher/HelperActivity$adbWifiReceiver$1;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/deepalhome/launcher/HelperActivity;->adbWifiReceiver:Lcom/deepalhome/launcher/HelperActivity$adbWifiReceiver$1;

    return-void
.end method

.method public static final native access$showForceRebootTip(Lcom/deepalhome/launcher/HelperActivity;)V
.end method


# virtual methods
.method public final native applyTheme()V
.end method

.method public final native cleanup()V
.end method

.method public final native doAutoGrant()V
.end method

.method public final native executeGrantPermissions(I)V
.end method

.method public final native onCreate(Landroid/os/Bundle;)V
.end method

.method public final native onDestroy()V
.end method

.method public final native onSupportNavigateUp()Z
.end method

.method public final native performAutoGrant()V
.end method

.method public final native showConnectionDialog()Z
.end method

.method public final native updateArrowTints(Landroid/view/View;Landroid/content/res/ColorStateList;)V
.end method

.method public final native updateButtonsEnabledState(Z)V
.end method

.method public final native updateCardTextColors(Landroid/view/ViewGroup;II)V
.end method

.method public final native updateIconInCard(Landroid/view/ViewGroup;ZF)V
.end method

.method public final native updateUnlockAdbButtonState()V
.end method

.method public final native updateWirelessDebugButtonState()V
.end method
