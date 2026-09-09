.class public final Lcom/deepalhome/launcher/settings/TaskEditorDialog$ConditionsAdapter$onBindViewHolder$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $pos:I

.field final synthetic this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

.field final synthetic this$1:Lcom/deepalhome/launcher/settings/TaskEditorDialog$ConditionsAdapter;


# direct methods
.method public constructor <init>(ILcom/deepalhome/launcher/settings/TaskEditorDialog;Lcom/deepalhome/launcher/settings/TaskEditorDialog$ConditionsAdapter;)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ConditionsAdapter$onBindViewHolder$1$1;->$pos:I

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ConditionsAdapter$onBindViewHolder$1$1;->this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    iput-object p3, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ConditionsAdapter$onBindViewHolder$1$1;->this$1:Lcom/deepalhome/launcher/settings/TaskEditorDialog$ConditionsAdapter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ConditionsAdapter$onBindViewHolder$1$1;->$pos:I

    iget-object v1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ConditionsAdapter$onBindViewHolder$1$1;->this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    iget-object v1, v1, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->conditions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ConditionsAdapter$onBindViewHolder$1$1;->this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    iget-object v0, v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->conditions:Ljava/util/ArrayList;

    iget v1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ConditionsAdapter$onBindViewHolder$1$1;->$pos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ConditionsAdapter$onBindViewHolder$1$1;->this$1:Lcom/deepalhome/launcher/settings/TaskEditorDialog$ConditionsAdapter;

    iget v1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ConditionsAdapter$onBindViewHolder$1$1;->$pos:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ConditionsAdapter$onBindViewHolder$1$1;->this$1:Lcom/deepalhome/launcher/settings/TaskEditorDialog$ConditionsAdapter;

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ConditionsAdapter;->onConditionsChanged:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
