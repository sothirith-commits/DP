.class public final Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$onBindViewHolder$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic $action:Lcom/deepalhome/launcher/task/model/TaskAction;

.field public final synthetic $holder:Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$ViewHolder;

.field public final synthetic $valueTv:Landroid/widget/TextView;

.field public final synthetic this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Lcom/deepalhome/launcher/settings/TaskEditorDialog;Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$ViewHolder;Lcom/deepalhome/launcher/task/model/TaskAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$onBindViewHolder$6;->$valueTv:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$onBindViewHolder$6;->this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    iput-object p3, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$onBindViewHolder$6;->$holder:Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$ViewHolder;

    iput-object p4, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$onBindViewHolder$6;->$action:Lcom/deepalhome/launcher/task/model/TaskAction;

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    add-int/lit8 p2, p2, 0x1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p3, 0x73

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$onBindViewHolder$6;->$valueTv:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$onBindViewHolder$6;->this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    iget-object p1, p1, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->actions:Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$onBindViewHolder$6;->$holder:Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$ViewHolder;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p3

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$onBindViewHolder$6;->$action:Lcom/deepalhome/launcher/task/model/TaskAction;

    instance-of v0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$RearFogLightStrobe;

    if-eqz v0, :cond_0

    new-instance p0, Lcom/deepalhome/launcher/task/model/TaskAction$RearFogLightStrobe;

    invoke-direct {p0, p2}, Lcom/deepalhome/launcher/task/model/TaskAction$RearFogLightStrobe;-><init>(I)V

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$LowBeamStrobe;

    if-eqz v0, :cond_1

    new-instance p0, Lcom/deepalhome/launcher/task/model/TaskAction$LowBeamStrobe;

    invoke-direct {p0, p2}, Lcom/deepalhome/launcher/task/model/TaskAction$LowBeamStrobe;-><init>(I)V

    :cond_1
    :goto_0
    invoke-virtual {p1, p3, p0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
