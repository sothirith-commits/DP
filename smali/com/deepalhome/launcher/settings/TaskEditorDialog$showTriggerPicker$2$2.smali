.class public final Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$2$2;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# instance fields
.field public final synthetic $dialog:Landroid/app/AlertDialog;

.field public final synthetic $gears:Ljava/util/List;

.field public final synthetic $onSelected:Lkotlin/jvm/functions/Function1;

.field public final synthetic this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/settings/TaskEditorDialog;Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$2$2;->this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$2$2;->$gears:Ljava/util/List;

    iput-object p3, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$2$2;->$onSelected:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$2$2;->$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$2$2;->$gears:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    const-string v0, "holder"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$2$2;->$gears:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0b0050

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0b0052

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged;->getGear()I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    const v2, 0x7f080168

    goto :goto_0

    :cond_0
    const v2, 0x7f080169

    goto :goto_0

    :cond_1
    const v2, 0x7f08016c

    goto :goto_0

    :cond_2
    const v2, 0x7f08016a

    goto :goto_0

    :cond_3
    const v2, 0x7f08016b

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$2$2;->this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    iget v3, v2, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->textColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    sget-object v0, Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged;->Companion:Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged$Companion;

    invoke-virtual {p2}, Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged;->getGear()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged$Companion;->getGearName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, v2, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->textColor:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/deepalhome/launcher/HelperActivity$$ExternalSyntheticLambda13;

    iget-object v1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$2$2;->$onSelected:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$2$2;->$dialog:Landroid/app/AlertDialog;

    const/16 v2, 0x9

    invoke-direct {v0, v1, p2, p0, v2}, Lcom/deepalhome/launcher/HelperActivity$$ExternalSyntheticLambda13;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const-string p2, "parent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$2$2;->this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->context:Landroid/content/Context;

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
