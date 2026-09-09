.class public abstract Lcom/deepalhome/launcher/databinding/ItemAccessibilityServiceBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final descTv:Landroid/widget/TextView;

.field public final iconIv:Landroid/widget/ImageView;

.field public final itemRoot:Landroid/widget/LinearLayout;

.field public final nameTv:Landroid/widget/TextView;

.field public final serviceSwitch:Lcom/kyleduo/switchbutton/SwitchButton;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/kyleduo/switchbutton/SwitchButton;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;ILandroid/view/View;)V

    iput-object p3, p0, Lcom/deepalhome/launcher/databinding/ItemAccessibilityServiceBinding;->descTv:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/deepalhome/launcher/databinding/ItemAccessibilityServiceBinding;->iconIv:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/deepalhome/launcher/databinding/ItemAccessibilityServiceBinding;->itemRoot:Landroid/widget/LinearLayout;

    iput-object p6, p0, Lcom/deepalhome/launcher/databinding/ItemAccessibilityServiceBinding;->nameTv:Landroid/widget/TextView;

    iput-object p7, p0, Lcom/deepalhome/launcher/databinding/ItemAccessibilityServiceBinding;->serviceSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    return-void
.end method
