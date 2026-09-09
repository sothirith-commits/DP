.class public abstract Lcom/deepalhome/launcher/databinding/FanSpeedPopupWindowBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final fanSpeedSeekBar:Landroid/widget/SeekBar;

.field public final leftFanIcon:Landroid/widget/ImageView;

.field public final popupContainer:Landroid/widget/FrameLayout;

.field public final popupContentContainer:Landroid/widget/LinearLayout;

.field public final rightFanIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;Landroid/widget/SeekBar;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;ILandroid/view/View;)V

    iput-object p3, p0, Lcom/deepalhome/launcher/databinding/FanSpeedPopupWindowBinding;->fanSpeedSeekBar:Landroid/widget/SeekBar;

    iput-object p4, p0, Lcom/deepalhome/launcher/databinding/FanSpeedPopupWindowBinding;->leftFanIcon:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/deepalhome/launcher/databinding/FanSpeedPopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    iput-object p6, p0, Lcom/deepalhome/launcher/databinding/FanSpeedPopupWindowBinding;->popupContentContainer:Landroid/widget/LinearLayout;

    iput-object p7, p0, Lcom/deepalhome/launcher/databinding/FanSpeedPopupWindowBinding;->rightFanIcon:Landroid/widget/ImageView;

    return-void
.end method
