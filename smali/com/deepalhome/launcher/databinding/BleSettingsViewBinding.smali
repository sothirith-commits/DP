.class public abstract Lcom/deepalhome/launcher/databinding/BleSettingsViewBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final btnAddDevice:Landroid/widget/Button;

.field public final btnBuyDevice:Landroid/widget/Button;

.field public final devicesContainer:Landroid/widget/LinearLayout;

.field public final devicesLeftColumn:Landroid/widget/LinearLayout;

.field public final devicesRightColumn:Landroid/widget/LinearLayout;

.field public final emptyHintTv:Landroid/widget/TextView;

.field public final headerCard:Landroid/widget/LinearLayout;

.field public final tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p10, v0, p1}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;ILandroid/view/View;)V

    iput-object p2, p0, Lcom/deepalhome/launcher/databinding/BleSettingsViewBinding;->btnAddDevice:Landroid/widget/Button;

    iput-object p3, p0, Lcom/deepalhome/launcher/databinding/BleSettingsViewBinding;->btnBuyDevice:Landroid/widget/Button;

    iput-object p4, p0, Lcom/deepalhome/launcher/databinding/BleSettingsViewBinding;->devicesContainer:Landroid/widget/LinearLayout;

    iput-object p5, p0, Lcom/deepalhome/launcher/databinding/BleSettingsViewBinding;->devicesLeftColumn:Landroid/widget/LinearLayout;

    iput-object p6, p0, Lcom/deepalhome/launcher/databinding/BleSettingsViewBinding;->devicesRightColumn:Landroid/widget/LinearLayout;

    iput-object p8, p0, Lcom/deepalhome/launcher/databinding/BleSettingsViewBinding;->emptyHintTv:Landroid/widget/TextView;

    iput-object p7, p0, Lcom/deepalhome/launcher/databinding/BleSettingsViewBinding;->headerCard:Landroid/widget/LinearLayout;

    iput-object p9, p0, Lcom/deepalhome/launcher/databinding/BleSettingsViewBinding;->tvTitle:Landroid/widget/TextView;

    return-void
.end method
