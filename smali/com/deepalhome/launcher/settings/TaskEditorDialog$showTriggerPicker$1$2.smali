.class public final Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$1$2;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# instance fields
.field public final synthetic $dialog:Landroid/app/AlertDialog;

.field public final synthetic $onSelected:Lkotlin/jvm/functions/Function1;

.field public final synthetic $renderButtonPicker:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic $renderGearPicker:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic $renderSpeedRangePicker:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic $triggers:Ljava/util/List;

.field public final synthetic this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/settings/TaskEditorDialog;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/app/AlertDialog;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$1$2;->this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$1$2;->$triggers:Ljava/util/List;

    iput-object p3, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$1$2;->$renderGearPicker:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p4, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$1$2;->$renderSpeedRangePicker:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p5, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$1$2;->$dialog:Landroid/app/AlertDialog;

    iput-object p6, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$1$2;->$onSelected:Lkotlin/jvm/functions/Function1;

    iput-object p7, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$1$2;->$renderButtonPicker:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$1$2;->$triggers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    const-string v0, "holder"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$1$2;->$triggers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/deepalhome/launcher/task/model/TaskTrigger;

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0b0050

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0b0052

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$1$2;->this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->getTriggerIcon(Lcom/deepalhome/launcher/task/model/TaskTrigger;)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iget v2, v2, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->textColor:I

    invoke-virtual {p2, v2, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/task/model/TaskTrigger;->getPickerDisplayName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog$$ExternalSyntheticLambda1;

    iget-object v6, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$1$2;->$onSelected:Lkotlin/jvm/functions/Function1;

    iget-object v7, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$1$2;->$renderButtonPicker:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$1$2;->$renderGearPicker:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$1$2;->$renderSpeedRangePicker:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$1$2;->this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    iget-object v5, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$1$2;->$dialog:Landroid/app/AlertDialog;

    move-object v0, p2

    invoke-direct/range {v0 .. v7}, Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog$$ExternalSyntheticLambda1;-><init>(Lcom/deepalhome/launcher/task/model/TaskTrigger;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/deepalhome/launcher/settings/TaskEditorDialog;Landroid/app/AlertDialog;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const-string p2, "parent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$1$2;->this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

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
