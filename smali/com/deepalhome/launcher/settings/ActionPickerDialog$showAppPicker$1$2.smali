.class public final Lcom/deepalhome/launcher/settings/ActionPickerDialog$showAppPicker$1$2;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# instance fields
.field public final synthetic $dialog:Landroid/app/AlertDialog;

.field public final synthetic $filteredApps:Ljava/util/List;

.field public final synthetic $onSelected:Lkotlin/jvm/functions/Function1;

.field public final synthetic this$0:Lcom/deepalhome/launcher/settings/ActionPickerDialog;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/settings/ActionPickerDialog;Ljava/util/ArrayList;Lkotlin/jvm/functions/Function1;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog$showAppPicker$1$2;->this$0:Lcom/deepalhome/launcher/settings/ActionPickerDialog;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog$showAppPicker$1$2;->$filteredApps:Ljava/util/List;

    iput-object p3, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog$showAppPicker$1$2;->$onSelected:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog$showAppPicker$1$2;->$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog$showAppPicker$1$2;->$filteredApps:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    const-string v0, "holder"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog$showAppPicker$1$2;->$filteredApps:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/deepalhome/launcher/app/App;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0b0090

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0b0095

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/deepalhome/launcher/app/App;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog$showAppPicker$1$2;->this$0:Lcom/deepalhome/launcher/settings/ActionPickerDialog;

    iget v2, v2, Lcom/deepalhome/launcher/settings/ActionPickerDialog;->textColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v1, Lcom/deepalhome/launcher/util/AppUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AppUtil;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x7f0800ec

    invoke-static {v0, p2, v1}, Lcom/deepalhome/launcher/util/AppUtil;->bindAppIcon(Landroid/widget/ImageView;Lcom/deepalhome/launcher/app/App;I)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/deepalhome/launcher/HelperActivity$$ExternalSyntheticLambda13;

    iget-object v1, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog$showAppPicker$1$2;->$onSelected:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog$showAppPicker$1$2;->$dialog:Landroid/app/AlertDialog;

    const/4 v2, 0x4

    invoke-direct {v0, v1, p2, p0, v2}, Lcom/deepalhome/launcher/HelperActivity$$ExternalSyntheticLambda13;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const-string p2, "parent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog$showAppPicker$1$2;->this$0:Lcom/deepalhome/launcher/settings/ActionPickerDialog;

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/ActionPickerDialog;->context:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p2, 0x7f0e002b

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/deepalhome/launcher/settings/ActionPickerDialog$showAppPicker$1$2$onCreateViewHolder$1;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
