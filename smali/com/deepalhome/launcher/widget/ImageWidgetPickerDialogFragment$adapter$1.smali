.class public final Lcom/deepalhome/launcher/widget/ImageWidgetPickerDialogFragment$adapter$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/widget/ImageWidgetPickerDialogFragment;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/widget/ImageWidgetPickerDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/ImageWidgetPickerDialogFragment$adapter$1;->this$0:Lcom/deepalhome/launcher/widget/ImageWidgetPickerDialogFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/deepalhome/launcher/widget/ImageWidgetPickerEntry;

    const-string v0, "entry"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/ImageWidgetPickerDialogFragment$adapter$1;->this$0:Lcom/deepalhome/launcher/widget/ImageWidgetPickerDialogFragment;

    iget-object v0, v0, Lcom/deepalhome/launcher/widget/ImageWidgetPickerDialogFragment;->onImageSelected:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/deepalhome/launcher/widget/ImageWidgetPickerEntry;->path:Ljava/lang/String;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lcom/deepalhome/launcher/widget/ImageWidgetPickerDialogFragment$adapter$1;->this$0:Lcom/deepalhome/launcher/widget/ImageWidgetPickerDialogFragment;

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAllowingStateLoss()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
