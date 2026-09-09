.class public final Lcom/deepalhome/launcher/pip/PipAppPickerDialog$AppGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field public final context:Landroid/content/Context;

.field public final iconSizePx:I

.field public final items:Ljava/util/List;

.field public final paddingPx:I

.field public final textColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/pip/PipAppPickerDialog$AppGridAdapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/deepalhome/launcher/pip/PipAppPickerDialog$AppGridAdapter;->items:Ljava/util/List;

    sget-object p2, Lcom/deepalhome/launcher/pip/PipAppPickerDialog;->INSTANCE:Lcom/deepalhome/launcher/pip/PipAppPickerDialog;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p2, 0x60

    invoke-static {p1, p2}, Lcom/deepalhome/launcher/pip/PipAppPickerDialog;->dpToPx(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/deepalhome/launcher/pip/PipAppPickerDialog$AppGridAdapter;->iconSizePx:I

    const/16 p2, 0xc

    invoke-static {p1, p2}, Lcom/deepalhome/launcher/pip/PipAppPickerDialog;->dpToPx(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/deepalhome/launcher/pip/PipAppPickerDialog$AppGridAdapter;->paddingPx:I

    if-eqz p3, :cond_0

    const p2, 0x7f06038c

    goto :goto_0

    :cond_0
    const p2, 0x7f06038b

    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/pip/PipAppPickerDialog$AppGridAdapter;->textColor:I

    return-void
.end method


# virtual methods
.method public final native getCount()I
.end method

.method public final native getItem(I)Ljava/lang/Object;
.end method

.method public final native getItemId(I)J
.end method

.method public final native getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method
