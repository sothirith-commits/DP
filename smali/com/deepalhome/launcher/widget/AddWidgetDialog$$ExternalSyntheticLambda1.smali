.class public final synthetic Lcom/deepalhome/launcher/widget/AddWidgetDialog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/deepalhome/launcher/widget/AddWidgetDialog;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/widget/AddWidgetDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/AddWidgetDialog$$ExternalSyntheticLambda1;->f$0:Lcom/deepalhome/launcher/widget/AddWidgetDialog;

    iput-object p2, p0, Lcom/deepalhome/launcher/widget/AddWidgetDialog$$ExternalSyntheticLambda1;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 5

    sget p1, Lcom/deepalhome/launcher/widget/AddWidgetDialog;->$r8$clinit:I

    iget-object p1, p0, Lcom/deepalhome/launcher/widget/AddWidgetDialog$$ExternalSyntheticLambda1;->f$0:Lcom/deepalhome/launcher/widget/AddWidgetDialog;

    const-string v0, "this$0"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/AddWidgetDialog$$ExternalSyntheticLambda1;->f$1:Landroid/view/View;

    const-string v0, "$view"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/deepalhome/launcher/widget/AddWidgetDialog;->binding:Lcom/deepalhome/launcher/databinding/AddWidgetDialogBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_10

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/AddWidgetDialogBinding;->widgetsContainer:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f0b05d3

    if-ne p2, v0, :cond_0

    const p2, 0x7f0e010a

    goto :goto_0

    :cond_0
    const v0, 0x7f0b0697

    if-ne p2, v0, :cond_1

    const p2, 0x7f0e011f

    goto :goto_0

    :cond_1
    const v0, 0x7f0b05d5

    if-ne p2, v0, :cond_2

    const p2, 0x7f0e0109

    goto :goto_0

    :cond_2
    const v0, 0x7f0b038b

    if-ne p2, v0, :cond_3

    const p2, 0x7f0e0096

    goto :goto_0

    :cond_3
    const v0, 0x7f0b065e

    if-ne p2, v0, :cond_4

    const p2, 0x7f0e010d

    goto :goto_0

    :cond_4
    const v0, 0x7f0b04a1

    if-ne p2, v0, :cond_5

    const p2, 0x7f0e00e7

    goto :goto_0

    :cond_5
    const v0, 0x7f0b0679

    if-ne p2, v0, :cond_6

    const p2, 0x7f0e011b

    goto :goto_0

    :cond_6
    const v0, 0x7f0b0391

    if-ne p2, v0, :cond_7

    const p2, 0x7f0e0097

    goto :goto_0

    :cond_7
    const v0, 0x7f0b0363

    if-ne p2, v0, :cond_8

    const p2, 0x7f0e0084

    goto :goto_0

    :cond_8
    const p2, 0x7f0e0027

    :goto_0
    iget-object v0, p1, Lcom/deepalhome/launcher/widget/AddWidgetDialog;->binding:Lcom/deepalhome/launcher/databinding/AddWidgetDialogBinding;

    if-eqz v0, :cond_f

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/AddWidgetDialogBinding;->widgetsContainer:Landroidx/core/widget/NestedScrollView;

    const/4 v3, 0x1

    invoke-virtual {p0, p2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    iget-object p0, p1, Lcom/deepalhome/launcher/widget/AddWidgetDialog;->binding:Lcom/deepalhome/launcher/databinding/AddWidgetDialogBinding;

    if-eqz p0, :cond_e

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/AddWidgetDialogBinding;->widgetsContainer:Landroidx/core/widget/NestedScrollView;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p0, Landroid/view/ViewGroup;

    new-instance v0, Landroidx/core/view/ViewKt$allViews$1;

    invoke-direct {v0, p0, v1}, Landroidx/core/view/ViewKt$allViews$1;-><init>(Landroid/view/View;Lkotlin/coroutines/Continuation;)V

    new-instance p0, Lkotlin/sequences/SequenceBuilderIterator;

    invoke-direct {p0}, Lkotlin/sequences/SequenceBuilderIterator;-><init>()V

    invoke-static {v0, p0, p0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->createCoroutineUnintercepted(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    iput-object v0, p0, Lkotlin/sequences/SequenceBuilderIterator;->nextStep:Lkotlin/coroutines/Continuation;

    :cond_9
    :goto_1
    invoke-virtual {p0}, Lkotlin/sequences/SequenceBuilderIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lkotlin/sequences/SequenceBuilderIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    instance-of v2, v0, Lcom/deepalhome/launcher/widget/BaseWidgetView;

    if-eqz v2, :cond_9

    sget-object v2, Lcom/deepalhome/launcher/widget/WidgetInfo;->Companion:Lcom/deepalhome/launcher/widget/WidgetInfo$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/deepalhome/launcher/widget/WidgetInfo$Companion;->isWidgetClassSupported(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    check-cast v0, Lcom/deepalhome/launcher/widget/BaseWidgetView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_a
    check-cast v0, Lcom/deepalhome/launcher/widget/BaseWidgetView;

    invoke-virtual {v0, v3}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->setPreview(Z)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setLongClickable(Z)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v0, p2}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->setDescendantTouchEventsEnabled(Z)V

    new-instance v2, Landroidx/core/view/ViewKt$allViews$1;

    invoke-direct {v2, v0, v1}, Landroidx/core/view/ViewKt$allViews$1;-><init>(Landroid/view/View;Lkotlin/coroutines/Continuation;)V

    new-instance v4, Lkotlin/sequences/SequenceBuilderIterator;

    invoke-direct {v4}, Lkotlin/sequences/SequenceBuilderIterator;-><init>()V

    invoke-static {v2, v4, v4}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->createCoroutineUnintercepted(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v2

    iput-object v2, v4, Lkotlin/sequences/SequenceBuilderIterator;->nextStep:Lkotlin/coroutines/Continuation;

    :cond_b
    :goto_2
    invoke-virtual {v4}, Lkotlin/sequences/SequenceBuilderIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v4}, Lkotlin/sequences/SequenceBuilderIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eq v2, v0, :cond_b

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v2, p2}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v2, p2}, Landroid/view/View;->setLongClickable(Z)V

    invoke-virtual {v2, p2}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v2, p2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    goto :goto_2

    :cond_c
    new-instance v2, Lcom/deepalhome/launcher/widget/AddWidgetDialog$PaletteWidgetTouchListener;

    invoke-direct {v2, p1, v0}, Lcom/deepalhome/launcher/widget/AddWidgetDialog$PaletteWidgetTouchListener;-><init>(Lcom/deepalhome/launcher/widget/AddWidgetDialog;Lcom/deepalhome/launcher/widget/BaseWidgetView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1

    :cond_d
    return-void

    :cond_e
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_f
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_10
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method
