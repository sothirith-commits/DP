.class public final Lcom/deepalhome/launcher/widget/WidgetMoreMenuController$createSliderSection$seekBar$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic $max:I

.field public final synthetic $onProgressChanged:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController$createSliderSection$seekBar$1$1;->$onProgressChanged:Lkotlin/jvm/functions/Function1;

    const/16 p1, 0x64

    iput p1, p0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController$createSliderSection$seekBar$1$1;->$max:I

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    iget p3, p0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController$createSliderSection$seekBar$1$1;->$max:I

    invoke-static {p2, p1, p3}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController$createSliderSection$seekBar$1$1;->$onProgressChanged:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

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
