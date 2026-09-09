.class public final Lcom/deepalhome/launcher/settings/TaskEditorDialog$showConditionTypePicker$renderConditionPicker$3;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# instance fields
.field public final synthetic $conditionTypes:Ljava/util/List;

.field public final synthetic $contentContainer:Landroid/widget/FrameLayout;

.field public final synthetic $contentRoot:Landroid/widget/LinearLayout;

.field public final synthetic $customContent:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic $dialog:Landroid/app/AlertDialog;

.field public final synthetic $gridRv:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic $headerLayout:Landroid/widget/LinearLayout;

.field public final synthetic $onSelected:Lkotlin/jvm/functions/Function1;

.field public final synthetic this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/settings/TaskEditorDialog;Ljava/util/List;Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$7$1;Landroid/app/AlertDialog;Landroid/widget/FrameLayout;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showConditionTypePicker$renderConditionPicker$3;->this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showConditionTypePicker$renderConditionPicker$3;->$conditionTypes:Ljava/util/List;

    iput-object p3, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showConditionTypePicker$renderConditionPicker$3;->$onSelected:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showConditionTypePicker$renderConditionPicker$3;->$dialog:Landroid/app/AlertDialog;

    iput-object p5, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showConditionTypePicker$renderConditionPicker$3;->$contentContainer:Landroid/widget/FrameLayout;

    iput-object p6, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showConditionTypePicker$renderConditionPicker$3;->$customContent:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p7, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showConditionTypePicker$renderConditionPicker$3;->$headerLayout:Landroid/widget/LinearLayout;

    iput-object p8, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showConditionTypePicker$renderConditionPicker$3;->$gridRv:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p9, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showConditionTypePicker$renderConditionPicker$3;->$contentRoot:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showConditionTypePicker$renderConditionPicker$3;->$conditionTypes:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 12

    const-string v0, "holder"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showConditionTypePicker$renderConditionPicker$3;->$conditionTypes:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/Triple;

    invoke-virtual {p2}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p2}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2}, Lkotlin/Triple;->component3()Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0b0050

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v4, 0x7f0b0052

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showConditionTypePicker$renderConditionPicker$3;->this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    iget v4, v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->textColor:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v4, v5}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget p2, v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->textColor:I

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showConditionTypePicker$renderConditionPicker$3$$ExternalSyntheticLambda0;

    iget-object v4, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showConditionTypePicker$renderConditionPicker$3;->$onSelected:Lkotlin/jvm/functions/Function1;

    iget-object v5, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showConditionTypePicker$renderConditionPicker$3;->$dialog:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showConditionTypePicker$renderConditionPicker$3;->this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    iget-object v7, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showConditionTypePicker$renderConditionPicker$3;->$contentContainer:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showConditionTypePicker$renderConditionPicker$3;->$customContent:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v9, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showConditionTypePicker$renderConditionPicker$3;->$headerLayout:Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showConditionTypePicker$renderConditionPicker$3;->$gridRv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v11, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showConditionTypePicker$renderConditionPicker$3;->$contentRoot:Landroid/widget/LinearLayout;

    move-object v2, p2

    invoke-direct/range {v2 .. v11}, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showConditionTypePicker$renderConditionPicker$3$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroid/app/AlertDialog;Lcom/deepalhome/launcher/settings/TaskEditorDialog;Landroid/widget/FrameLayout;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/LinearLayout;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const-string p2, "parent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showConditionTypePicker$renderConditionPicker$3;->this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

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
