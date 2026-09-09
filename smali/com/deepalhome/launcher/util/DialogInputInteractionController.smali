.class public final Lcom/deepalhome/launcher/util/DialogInputInteractionController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final afterRequestFocus:Lkotlin/jvm/functions/Function0;

.field public final autoShowKeyboard:Z

.field public final beforeHideKeyboard:Lkotlin/jvm/functions/Function0;

.field public final beforeShowKeyboard:Lkotlin/jvm/functions/Function0;

.field public final configureDialogWindowForIme:Z

.field public final dialog:Landroid/app/Dialog;

.field public final focusHitViews:Ljava/util/List;

.field public final imm:Landroid/view/inputmethod/InputMethodManager;

.field public final inputView:Landroid/view/View;

.field public final showDelayMs:J

.field public final touchListener:Lcom/deepalhome/launcher/pip/PipAppWindow$$ExternalSyntheticLambda4;

.field public final touchRoot:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Dialog;Landroid/widget/EditText;Landroid/view/View;Ljava/util/List;ZZJLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V
    .locals 2

    and-int/lit8 v0, p12, 0x8

    if-eqz v0, :cond_0

    invoke-static {p2}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    :cond_0
    and-int/lit8 v0, p12, 0x10

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move p5, v1

    :cond_1
    and-int/lit8 v0, p12, 0x20

    if-eqz v0, :cond_2

    move p6, v1

    :cond_2
    and-int/lit8 v0, p12, 0x40

    if-eqz v0, :cond_3

    const-wide/16 p7, 0x0

    :cond_3
    and-int/lit16 v0, p12, 0x80

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    move-object p9, v1

    :cond_4
    and-int/lit16 v0, p12, 0x100

    if-eqz v0, :cond_5

    move-object p10, v1

    :cond_5
    and-int/lit16 p12, p12, 0x200

    if-eqz p12, :cond_6

    move-object p11, v1

    :cond_6
    const-string p12, "focusHitViews"

    invoke-static {p12, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/util/DialogInputInteractionController;->dialog:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/deepalhome/launcher/util/DialogInputInteractionController;->inputView:Landroid/view/View;

    iput-object p3, p0, Lcom/deepalhome/launcher/util/DialogInputInteractionController;->touchRoot:Landroid/view/View;

    iput-object p4, p0, Lcom/deepalhome/launcher/util/DialogInputInteractionController;->focusHitViews:Ljava/util/List;

    iput-boolean p5, p0, Lcom/deepalhome/launcher/util/DialogInputInteractionController;->autoShowKeyboard:Z

    iput-boolean p6, p0, Lcom/deepalhome/launcher/util/DialogInputInteractionController;->configureDialogWindowForIme:Z

    iput-wide p7, p0, Lcom/deepalhome/launcher/util/DialogInputInteractionController;->showDelayMs:J

    iput-object p9, p0, Lcom/deepalhome/launcher/util/DialogInputInteractionController;->beforeShowKeyboard:Lkotlin/jvm/functions/Function0;

    iput-object p10, p0, Lcom/deepalhome/launcher/util/DialogInputInteractionController;->afterRequestFocus:Lkotlin/jvm/functions/Function0;

    iput-object p11, p0, Lcom/deepalhome/launcher/util/DialogInputInteractionController;->beforeHideKeyboard:Lkotlin/jvm/functions/Function0;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p2, :cond_7

    move-object v1, p1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    :cond_7
    iput-object v1, p0, Lcom/deepalhome/launcher/util/DialogInputInteractionController;->imm:Landroid/view/inputmethod/InputMethodManager;

    new-instance p1, Lcom/deepalhome/launcher/pip/PipAppWindow$$ExternalSyntheticLambda4;

    const/16 p2, 0x9

    invoke-direct {p1, p2, p0}, Lcom/deepalhome/launcher/pip/PipAppWindow$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/util/DialogInputInteractionController;->touchListener:Lcom/deepalhome/launcher/pip/PipAppWindow$$ExternalSyntheticLambda4;

    return-void
.end method


# virtual methods
.method public final bind()V
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/util/DialogInputInteractionController;->touchRoot:Landroid/view/View;

    iget-object v1, p0, Lcom/deepalhome/launcher/util/DialogInputInteractionController;->touchListener:Lcom/deepalhome/launcher/pip/PipAppWindow$$ExternalSyntheticLambda4;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/util/DialogInputInteractionController;->dialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    if-eq p0, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final hideKeyboard()V
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/util/DialogInputInteractionController;->beforeHideKeyboard:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/util/DialogInputInteractionController;->inputView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    iget-object p0, p0, Lcom/deepalhome/launcher/util/DialogInputInteractionController;->imm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    return-void
.end method

.method public final onDialogShown()V
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/util/DialogInputInteractionController;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/deepalhome/launcher/util/DialogInputInteractionController;->touchRoot:Landroid/view/View;

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/deepalhome/launcher/util/DialogInputInteractionController;->touchListener:Lcom/deepalhome/launcher/pip/PipAppWindow$$ExternalSyntheticLambda4;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/deepalhome/launcher/util/DialogInputInteractionController;->autoShowKeyboard:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/deepalhome/launcher/util/DialogInputInteractionController;->showKeyboard()V

    :cond_2
    return-void
.end method

.method public final showKeyboard()V
    .locals 3

    iget-boolean v0, p0, Lcom/deepalhome/launcher/util/DialogInputInteractionController;->configureDialogWindowForIme:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/deepalhome/launcher/util/DialogInputInteractionController;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    const/high16 v2, 0x20000

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    :cond_1
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_2
    new-instance v0, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iget-wide v1, p0, Lcom/deepalhome/launcher/util/DialogInputInteractionController;->showDelayMs:J

    iget-object p0, p0, Lcom/deepalhome/launcher/util/DialogInputInteractionController;->inputView:Landroid/view/View;

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
