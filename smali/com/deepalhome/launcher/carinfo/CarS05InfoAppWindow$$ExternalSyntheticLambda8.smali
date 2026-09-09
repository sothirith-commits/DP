.class public final synthetic Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic f$1:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnOrderAdapter;

.field public final synthetic f$2:Landroid/widget/TextView;

.field public final synthetic f$3:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnOrderAdapter;Landroid/widget/TextView;Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;I)V
    .locals 0

    iput p5, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$$ExternalSyntheticLambda8;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$$ExternalSyntheticLambda8;->f$0:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p2, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$$ExternalSyntheticLambda8;->f$1:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnOrderAdapter;

    iput-object p3, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$$ExternalSyntheticLambda8;->f$2:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$$ExternalSyntheticLambda8;->f$3:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    iget-object p1, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$$ExternalSyntheticLambda8;->f$2:Landroid/widget/TextView;

    const v0, 0x7f130404

    const/4 v1, 0x3

    const/4 v2, 0x5

    const-string v3, "this$0"

    iget-object v4, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$$ExternalSyntheticLambda8;->f$3:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;

    const-string v5, "$adapter"

    iget-object v6, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$$ExternalSyntheticLambda8;->f$1:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnOrderAdapter;

    const-string v7, "$showCount"

    iget-object v8, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$$ExternalSyntheticLambda8;->f$0:Lkotlin/jvm/internal/Ref$IntRef;

    iget p0, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$$ExternalSyntheticLambda8;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->Companion:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$Companion;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget p0, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-lt p0, v2, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    iput p0, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {p0, v1, v2}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p0

    iput p0, v6, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnOrderAdapter;->showCount:I

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    iget v1, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :pswitch_0
    sget-object p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->Companion:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$Companion;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget p0, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-gt p0, v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p0, p0, -0x1

    iput p0, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {p0, v1, v2}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p0

    iput p0, v6, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnOrderAdapter;->showCount:I

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    iget v1, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
