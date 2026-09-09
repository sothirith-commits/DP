.class public abstract Lcom/deepalhome/launcher/databinding/AddWidgetDialogBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final magiskBtn:Landroid/widget/RadioButton;

.field public final radioGroup:Landroid/widget/RadioGroup;

.field public final timeBtn:Landroid/widget/RadioButton;

.field public final widgetsContainer:Landroidx/core/widget/NestedScrollView;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;Landroid/widget/RadioButton;Landroid/widget/RadioGroup;Landroid/widget/RadioButton;Landroidx/core/widget/NestedScrollView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;ILandroid/view/View;)V

    iput-object p3, p0, Lcom/deepalhome/launcher/databinding/AddWidgetDialogBinding;->magiskBtn:Landroid/widget/RadioButton;

    iput-object p4, p0, Lcom/deepalhome/launcher/databinding/AddWidgetDialogBinding;->radioGroup:Landroid/widget/RadioGroup;

    iput-object p5, p0, Lcom/deepalhome/launcher/databinding/AddWidgetDialogBinding;->timeBtn:Landroid/widget/RadioButton;

    iput-object p6, p0, Lcom/deepalhome/launcher/databinding/AddWidgetDialogBinding;->widgetsContainer:Landroidx/core/widget/NestedScrollView;

    return-void
.end method
