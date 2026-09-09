.class public final synthetic Lcom/deepalhome/launcher/widget/MiTempWidgetView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/deepalhome/launcher/widget/MiTempWidgetView;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/widget/MiTempWidgetView;I)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/widget/MiTempWidgetView$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/MiTempWidgetView$$ExternalSyntheticLambda1;->f$0:Lcom/deepalhome/launcher/widget/MiTempWidgetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11

    iget-object p1, p0, Lcom/deepalhome/launcher/widget/MiTempWidgetView$$ExternalSyntheticLambda1;->f$0:Lcom/deepalhome/launcher/widget/MiTempWidgetView;

    const-string v0, "this$0"

    iget p0, p0, Lcom/deepalhome/launcher/widget/MiTempWidgetView$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget p0, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->$r8$clinit:I

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->dismissDeviceSelector()V

    return-void

    :pswitch_0
    sget p0, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->$r8$clinit:I

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->isPreview()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->latestDevices:Ljava/util/List;

    invoke-virtual {p1, p0}, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->resolveSelectedDevice(Ljava/util/List;)Lcom/deepalhome/mitemp/MiTempDevice;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/deepalhome/launcher/settings/MiTempUiFormatter;->INSTANCE:Lcom/deepalhome/launcher/settings/MiTempUiFormatter;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/deepalhome/mitemp/MiTempDevice;->name:Ljava/lang/String;

    const-string v0, "rawName"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "LYWSD03MMC"

    invoke-static {p1, v0}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/deepalhome/mitemp/MiTemp;->INSTANCE:Lcom/deepalhome/mitemp/MiTemp;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/deepalhome/mitemp/MiTempDevice;->address:Ljava/lang/String;

    invoke-static {p0}, Lcom/deepalhome/mitemp/MiTemp;->reconnect(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_1
    sget p0, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->$r8$clinit:I

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->isPreview()Z

    move-result p0

    if-eqz p0, :cond_3

    goto/16 :goto_2

    :cond_3
    iget-object p0, p1, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->selectorOverlay:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->dismissDeviceSelector()V

    goto/16 :goto_2

    :cond_4
    iget-object p0, p1, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->overlayHost:Landroid/view/ViewGroup;

    if-nez p0, :cond_5

    goto/16 :goto_2

    :cond_5
    iget-object v0, p1, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->latestDevices:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->refreshPopupContent(Ljava/util/List;)V

    iget-object v0, p1, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->selectorOverlay:Landroid/widget/FrameLayout;

    const/4 v6, -0x1

    if-nez v0, :cond_6

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/deepalhome/launcher/widget/MiTempWidgetView$$ExternalSyntheticLambda1;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2}, Lcom/deepalhome/launcher/widget/MiTempWidgetView$$ExternalSyntheticLambda1;-><init>(Lcom/deepalhome/launcher/widget/MiTempWidgetView;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v0, p1, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->selectorOverlay:Landroid/widget/FrameLayout;

    :cond_6
    move-object v7, v0

    invoke-virtual {v7}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v8, p1, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->popupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v9, 0x0

    if-eqz v1, :cond_7

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_1

    :cond_7
    move-object v0, v9

    :goto_1
    if-eqz v0, :cond_8

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v10, 0x0

    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v8, v0, v1}, Landroid/view/View;->measure(II)V

    sget-object v0, Lcom/deepalhome/launcher/widget/AnchoredOverlayPositioner;->INSTANCE:Lcom/deepalhome/launcher/widget/AnchoredOverlayPositioner;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;->batteryChip:Landroid/widget/LinearLayout;

    const-string v2, "batteryChip"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    const v4, 0x7f0700b7

    invoke-virtual {p1, v4}, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->dp(I)I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/deepalhome/launcher/widget/AnchoredOverlayPositioner;->position(Landroid/view/ViewGroup;Landroid/view/View;IIILjava/lang/Integer;)Lcom/deepalhome/launcher/widget/AnchoredOverlayPositioner$Position;

    move-result-object p1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget v1, p1, Lcom/deepalhome/launcher/widget/AnchoredOverlayPositioner$Position;->x:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget p1, p1, Lcom/deepalhome/launcher/widget/AnchoredOverlayPositioner$Position;->y:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v7, v8, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eq p1, p0, :cond_b

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_9

    move-object v9, p1

    check-cast v9, Landroid/view/ViewGroup;

    :cond_9
    if-eqz v9, :cond_a

    invoke-virtual {v9, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_a
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p1, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v7, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_b
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
