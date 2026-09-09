.class public final synthetic Lcom/deepalhome/launcher/window/WindowsView$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/window/WindowsView$$ExternalSyntheticLambda8;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/window/WindowsView$$ExternalSyntheticLambda8;->f$0:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "$toggle"

    iget-object v1, p0, Lcom/deepalhome/launcher/window/WindowsView$$ExternalSyntheticLambda8;->f$0:Lkotlin/jvm/functions/Function0;

    iget p0, p0, Lcom/deepalhome/launcher/window/WindowsView$$ExternalSyntheticLambda8;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "$onClick"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    :pswitch_0
    sget p0, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->$r8$clinit:I

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    :pswitch_1
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    :pswitch_2
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    :pswitch_3
    invoke-static {v1, p1}, Lcom/deepalhome/launcher/splash/FirstLaunchView;->$r8$lambda$9tsHsaNxxdalGj3QzBJSUTRqEeI(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    return-void

    :pswitch_4
    invoke-static {v1, p1}, Lcom/deepalhome/launcher/splash/FirstLaunchView;->$r8$lambda$yXif4XJ_3nnxMuk5N70yiVTwNYg(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    return-void

    :pswitch_5
    invoke-static {v1, p1}, Lcom/deepalhome/launcher/window/WindowsView;->$r8$lambda$zYQptO9u8QXhTFYwNDZlDdYZM9E(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
