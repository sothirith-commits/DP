.class public final synthetic Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/widget/Button;

.field public final synthetic f$1:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

.field public final synthetic f$2:Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$ViewHolder;

.field public final synthetic f$3:Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/Button;Lcom/deepalhome/launcher/settings/TaskEditorDialog;Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$ViewHolder;Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter;I)V
    .locals 0

    iput p5, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$$ExternalSyntheticLambda2;->f$0:Landroid/widget/Button;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$$ExternalSyntheticLambda2;->f$1:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    iput-object p3, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$$ExternalSyntheticLambda2;->f$2:Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$ViewHolder;

    iput-object p4, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$$ExternalSyntheticLambda2;->f$3:Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget p1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    const-string p1, "$this_apply"

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$$ExternalSyntheticLambda2;->f$0:Landroid/widget/Button;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "this$0"

    iget-object v1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$$ExternalSyntheticLambda2;->f$1:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "$holder"

    iget-object v2, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$$ExternalSyntheticLambda2;->f$2:Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$ViewHolder;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "this$1"

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$$ExternalSyntheticLambda2;->f$3:Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lcom/deepalhome/launcher/settings/ActionPickerDialog;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "getContext(...)"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v3, Lcom/deepalhome/launcher/settings/ActionPickerMode;->SCHEDULED_TASK:Lcom/deepalhome/launcher/settings/ActionPickerMode;

    new-instance v4, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$onBindViewHolder$btn$4$1$1;

    invoke-direct {v4, v1, v2, p0}, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$onBindViewHolder$btn$4$1$1;-><init>(Lcom/deepalhome/launcher/settings/TaskEditorDialog;Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$ViewHolder;Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter;)V

    invoke-direct {p1, v0, v3, v4}, Lcom/deepalhome/launcher/settings/ActionPickerDialog;-><init>(Landroid/content/Context;Lcom/deepalhome/launcher/settings/ActionPickerMode;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1}, Lcom/deepalhome/launcher/settings/ActionPickerDialog;->show()V

    return-void

    :pswitch_0
    const-string p1, "$this_apply"

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$$ExternalSyntheticLambda2;->f$0:Landroid/widget/Button;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "this$0"

    iget-object v1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$$ExternalSyntheticLambda2;->f$1:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "$holder"

    iget-object v2, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$$ExternalSyntheticLambda2;->f$2:Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$ViewHolder;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "this$1"

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$$ExternalSyntheticLambda2;->f$3:Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lcom/deepalhome/launcher/settings/ActionPickerDialog;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "getContext(...)"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v3, Lcom/deepalhome/launcher/settings/ActionPickerMode;->SCHEDULED_TASK:Lcom/deepalhome/launcher/settings/ActionPickerMode;

    new-instance v4, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$onBindViewHolder$btn$3$1$1;

    invoke-direct {v4, v1, v2, p0}, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$onBindViewHolder$btn$3$1$1;-><init>(Lcom/deepalhome/launcher/settings/TaskEditorDialog;Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$ViewHolder;Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter;)V

    invoke-direct {p1, v0, v3, v4}, Lcom/deepalhome/launcher/settings/ActionPickerDialog;-><init>(Landroid/content/Context;Lcom/deepalhome/launcher/settings/ActionPickerMode;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1}, Lcom/deepalhome/launcher/settings/ActionPickerDialog;->show()V

    return-void

    :pswitch_1
    const-string p1, "$this_apply"

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$$ExternalSyntheticLambda2;->f$0:Landroid/widget/Button;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "this$0"

    iget-object v1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$$ExternalSyntheticLambda2;->f$1:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "$holder"

    iget-object v2, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$$ExternalSyntheticLambda2;->f$2:Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$ViewHolder;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "this$1"

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$$ExternalSyntheticLambda2;->f$3:Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lcom/deepalhome/launcher/settings/ActionPickerDialog;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "getContext(...)"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v3, Lcom/deepalhome/launcher/settings/ActionPickerMode;->SCHEDULED_TASK:Lcom/deepalhome/launcher/settings/ActionPickerMode;

    new-instance v4, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$onBindViewHolder$btn$2$1$1;

    invoke-direct {v4, v1, v2, p0}, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$onBindViewHolder$btn$2$1$1;-><init>(Lcom/deepalhome/launcher/settings/TaskEditorDialog;Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$ViewHolder;Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter;)V

    invoke-direct {p1, v0, v3, v4}, Lcom/deepalhome/launcher/settings/ActionPickerDialog;-><init>(Landroid/content/Context;Lcom/deepalhome/launcher/settings/ActionPickerMode;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1}, Lcom/deepalhome/launcher/settings/ActionPickerDialog;->show()V

    return-void

    :pswitch_2
    const-string p1, "$this_apply"

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$$ExternalSyntheticLambda2;->f$0:Landroid/widget/Button;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "this$0"

    iget-object v1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$$ExternalSyntheticLambda2;->f$1:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "$holder"

    iget-object v2, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$$ExternalSyntheticLambda2;->f$2:Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$ViewHolder;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "this$1"

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$$ExternalSyntheticLambda2;->f$3:Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lcom/deepalhome/launcher/settings/ActionPickerDialog;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "getContext(...)"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v3, Lcom/deepalhome/launcher/settings/ActionPickerMode;->SCHEDULED_TASK:Lcom/deepalhome/launcher/settings/ActionPickerMode;

    new-instance v4, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$onBindViewHolder$btn$1$1$1;

    invoke-direct {v4, v1, v2, p0}, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$onBindViewHolder$btn$1$1$1;-><init>(Lcom/deepalhome/launcher/settings/TaskEditorDialog;Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$ViewHolder;Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter;)V

    invoke-direct {p1, v0, v3, v4}, Lcom/deepalhome/launcher/settings/ActionPickerDialog;-><init>(Landroid/content/Context;Lcom/deepalhome/launcher/settings/ActionPickerMode;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1}, Lcom/deepalhome/launcher/settings/ActionPickerDialog;->show()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
