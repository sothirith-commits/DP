.class public final synthetic Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda17;->$r8$classId:I

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda17;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 0

    iget p1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda17;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda17;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    iput-boolean p2, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->editTextHasFocus:Z

    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndIconDelegate;->refreshIconState()V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->setEndIconChecked(Z)V

    iput-boolean p1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupDirty:Z

    :cond_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda17;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->shouldBeVisible()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->animateIcon(Z)V

    return-void

    :pswitch_1
    const-string p1, "$customVoiceInputInteraction"

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda17;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/util/DialogInputInteractionController;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/util/DialogInputInteractionController;->showKeyboard()V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
