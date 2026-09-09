.class public abstract Lcom/deepalhome/launcher/databinding/BleDeviceCardBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final batteryTv:Landroid/widget/TextView;

.field public final clickEventTv:Landroid/widget/TextView;

.field public final configBtn:Landroid/widget/Button;

.field public final deleteBtn:Landroid/widget/Button;

.field public final deviceNameTv:Landroid/widget/TextView;

.field public final doubleClickEventTv:Landroid/widget/TextView;

.field public final longPressEventTv:Landroid/widget/TextView;

.field public final rotateEventTv:Landroid/widget/TextView;

.field public final statusIndicator:Landroid/view/View;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;ILandroid/view/View;)V

    iput-object p3, p0, Lcom/deepalhome/launcher/databinding/BleDeviceCardBinding;->batteryTv:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/deepalhome/launcher/databinding/BleDeviceCardBinding;->clickEventTv:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/deepalhome/launcher/databinding/BleDeviceCardBinding;->configBtn:Landroid/widget/Button;

    iput-object p6, p0, Lcom/deepalhome/launcher/databinding/BleDeviceCardBinding;->deleteBtn:Landroid/widget/Button;

    iput-object p7, p0, Lcom/deepalhome/launcher/databinding/BleDeviceCardBinding;->deviceNameTv:Landroid/widget/TextView;

    iput-object p8, p0, Lcom/deepalhome/launcher/databinding/BleDeviceCardBinding;->doubleClickEventTv:Landroid/widget/TextView;

    iput-object p9, p0, Lcom/deepalhome/launcher/databinding/BleDeviceCardBinding;->longPressEventTv:Landroid/widget/TextView;

    iput-object p10, p0, Lcom/deepalhome/launcher/databinding/BleDeviceCardBinding;->rotateEventTv:Landroid/widget/TextView;

    iput-object p11, p0, Lcom/deepalhome/launcher/databinding/BleDeviceCardBinding;->statusIndicator:Landroid/view/View;

    return-void
.end method
