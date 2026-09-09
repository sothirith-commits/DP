.class public final Lcom/deepalhome/launcher/ble/BleEventToast;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/ble/BleEventToast;

.field public static currentView:Landroid/view/View;

.field public static currentWindow:Lcom/hjq/window/EasyWindow;

.field public static dismissRunnable:Lcom/deepalhome/launcher/ble/BleEventToast$$ExternalSyntheticLambda1;

.field public static elevateRunnable:Lcom/deepalhome/launcher/ble/BleEventToast$$ExternalSyntheticLambda1;

.field public static final handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/ble/BleEventToast;

    invoke-direct {v0}, Lcom/deepalhome/launcher/ble/BleEventToast;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/ble/BleEventToast;->INSTANCE:Lcom/deepalhome/launcher/ble/BleEventToast;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/deepalhome/launcher/ble/BleEventToast;->handler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static show(ILjava/lang/String;)V
    .locals 3

    const-string v0, "text"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/ble/BleEventToast;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda1;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2, p1}, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda1;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
