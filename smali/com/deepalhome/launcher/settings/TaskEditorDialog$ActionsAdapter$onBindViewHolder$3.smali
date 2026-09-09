.class public final Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$onBindViewHolder$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic $action:Lcom/deepalhome/launcher/task/model/TaskAction;

.field public final synthetic $holder:Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$ViewHolder;

.field public final synthetic this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$ViewHolder;Lcom/deepalhome/launcher/settings/TaskEditorDialog;Lcom/deepalhome/launcher/task/model/TaskAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$onBindViewHolder$3;->$holder:Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$ViewHolder;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$onBindViewHolder$3;->this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    iput-object p3, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$onBindViewHolder$3;->$action:Lcom/deepalhome/launcher/task/model/TaskAction;

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$onBindViewHolder$3;->$holder:Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$ViewHolder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    iget-object v1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$onBindViewHolder$3;->this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    iget-object v1, v1, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->actions:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$onBindViewHolder$3;->$action:Lcom/deepalhome/launcher/task/model/TaskAction;

    instance-of p0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$SpeakLoopTts;

    if-eqz p0, :cond_2

    new-instance p0, Lcom/deepalhome/launcher/task/model/TaskAction$SpeakLoopTts;

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/task/model/TaskAction$SpeakLoopTts;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance p0, Lcom/deepalhome/launcher/task/model/TaskAction$SpeakTts;

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/task/model/TaskAction$SpeakTts;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v1, v0, p0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
