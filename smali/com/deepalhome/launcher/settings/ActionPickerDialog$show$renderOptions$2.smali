.class public final Lcom/deepalhome/launcher/settings/ActionPickerDialog$show$renderOptions$2;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# instance fields
.field public final synthetic $backBtn:Landroid/widget/ImageView;

.field public final synthetic $currentSubmenu:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic $dialog:Landroid/app/AlertDialog;

.field public final synthetic $gridRv:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic $options:Ljava/util/List;

.field public final synthetic $titleTv:Landroid/widget/TextView;

.field public final synthetic this$0:Lcom/deepalhome/launcher/settings/ActionPickerDialog;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/settings/ActionPickerDialog;Ljava/util/List;Landroid/app/AlertDialog;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/widget/TextView;Landroid/widget/ImageView;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog$show$renderOptions$2;->this$0:Lcom/deepalhome/launcher/settings/ActionPickerDialog;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog$show$renderOptions$2;->$options:Ljava/util/List;

    iput-object p3, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog$show$renderOptions$2;->$dialog:Landroid/app/AlertDialog;

    iput-object p4, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog$show$renderOptions$2;->$currentSubmenu:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p5, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog$show$renderOptions$2;->$titleTv:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog$show$renderOptions$2;->$backBtn:Landroid/widget/ImageView;

    iput-object p7, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog$show$renderOptions$2;->$gridRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog$show$renderOptions$2;->$options:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    const-string v0, "holder"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog$show$renderOptions$2;->$options:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/deepalhome/launcher/settings/ActionPickerOption;

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0b0050

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0b0052

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, v2, Lcom/deepalhome/launcher/settings/ActionPickerOption;->iconRes:I

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog$show$renderOptions$2;->this$0:Lcom/deepalhome/launcher/settings/ActionPickerDialog;

    iget-boolean v3, v2, Lcom/deepalhome/launcher/settings/ActionPickerOption;->tintIcon:Z

    if-eqz v3, :cond_0

    iget v3, v1, Lcom/deepalhome/launcher/settings/ActionPickerDialog;->textColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v3, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/widget/ImageView;->clearColorFilter()V

    :goto_0
    iget-object p2, v2, Lcom/deepalhome/launcher/settings/ActionPickerOption;->title:Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget p2, v1, Lcom/deepalhome/launcher/settings/ActionPickerDialog;->textColor:I

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog$$ExternalSyntheticLambda1;

    iget-object v1, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog$show$renderOptions$2;->this$0:Lcom/deepalhome/launcher/settings/ActionPickerDialog;

    iget-object v3, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog$show$renderOptions$2;->$dialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog$show$renderOptions$2;->$currentSubmenu:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog$show$renderOptions$2;->$titleTv:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog$show$renderOptions$2;->$backBtn:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog$show$renderOptions$2;->$gridRv:Landroidx/recyclerview/widget/RecyclerView;

    move-object v0, p2

    invoke-direct/range {v0 .. v7}, Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog$$ExternalSyntheticLambda1;-><init>(Lcom/deepalhome/launcher/settings/ActionPickerDialog;Lcom/deepalhome/launcher/settings/ActionPickerOption;Landroid/app/AlertDialog;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/widget/TextView;Landroid/widget/ImageView;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const-string p2, "parent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog$show$renderOptions$2;->this$0:Lcom/deepalhome/launcher/settings/ActionPickerDialog;

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog;->context:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p2, 0x7f0e001f

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/deepalhome/launcher/settings/ActionPickerDialog$showAppPicker$1$2$onCreateViewHolder$1;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
