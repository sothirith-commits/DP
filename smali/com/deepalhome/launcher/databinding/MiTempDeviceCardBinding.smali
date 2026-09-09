.class public abstract Lcom/deepalhome/launcher/databinding/MiTempDeviceCardBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final batteryTv:Landroid/widget/TextView;

.field public final deleteBtn:Landroid/widget/Button;

.field public final deviceNameTv:Landroid/widget/TextView;

.field public final readingTv:Landroid/widget/TextView;

.field public final reconnectBtn:Landroid/widget/Button;

.field public final renameBtn:Landroid/widget/Button;

.field public final statusIndicator:Landroid/view/View;

.field public final updatedAtTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/Button;Landroid/view/View;Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;ILandroid/view/View;)V

    iput-object p3, p0, Lcom/deepalhome/launcher/databinding/MiTempDeviceCardBinding;->batteryTv:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/deepalhome/launcher/databinding/MiTempDeviceCardBinding;->deleteBtn:Landroid/widget/Button;

    iput-object p5, p0, Lcom/deepalhome/launcher/databinding/MiTempDeviceCardBinding;->deviceNameTv:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/deepalhome/launcher/databinding/MiTempDeviceCardBinding;->readingTv:Landroid/widget/TextView;

    iput-object p7, p0, Lcom/deepalhome/launcher/databinding/MiTempDeviceCardBinding;->reconnectBtn:Landroid/widget/Button;

    iput-object p8, p0, Lcom/deepalhome/launcher/databinding/MiTempDeviceCardBinding;->renameBtn:Landroid/widget/Button;

    iput-object p9, p0, Lcom/deepalhome/launcher/databinding/MiTempDeviceCardBinding;->statusIndicator:Landroid/view/View;

    iput-object p10, p0, Lcom/deepalhome/launcher/databinding/MiTempDeviceCardBinding;->updatedAtTv:Landroid/widget/TextView;

    return-void
.end method
