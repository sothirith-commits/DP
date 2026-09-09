.class public final Lcom/deepalhome/launcher/settings/AboutSettingsView$loadAndShowDonateDialog$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# instance fields
.field public final synthetic $fillDonateInfo:Lkotlin/jvm/functions/Function1;

.field public final synthetic $qrLoadingTv:Landroid/widget/TextView;

.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/deepalhome/launcher/settings/AboutSettingsView;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/settings/AboutSettingsView;Landroid/widget/TextView;Lkotlin/jvm/internal/Lambda;I)V
    .locals 0

    iput p4, p0, Lcom/deepalhome/launcher/settings/AboutSettingsView$loadAndShowDonateDialog$5;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/AboutSettingsView$loadAndShowDonateDialog$5;->this$0:Lcom/deepalhome/launcher/settings/AboutSettingsView;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/AboutSettingsView$loadAndShowDonateDialog$5;->$qrLoadingTv:Landroid/widget/TextView;

    check-cast p3, Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/deepalhome/launcher/settings/AboutSettingsView$loadAndShowDonateDialog$5;->$fillDonateInfo:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1

    iget v0, p0, Lcom/deepalhome/launcher/settings/AboutSettingsView$loadAndShowDonateDialog$5;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "call"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "t"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/settings/AboutSettingsView$loadAndShowDonateDialog$5;->this$0:Lcom/deepalhome/launcher/settings/AboutSettingsView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f130198

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/AboutSettingsView$loadAndShowDonateDialog$5;->$qrLoadingTv:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_0
    const-string v0, "call"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "t"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/settings/AboutSettingsView$loadAndShowDonateDialog$5;->this$0:Lcom/deepalhome/launcher/settings/AboutSettingsView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f130198

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/AboutSettingsView$loadAndShowDonateDialog$5;->$qrLoadingTv:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 1

    iget v0, p0, Lcom/deepalhome/launcher/settings/AboutSettingsView$loadAndShowDonateDialog$5;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "call"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "response"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p2, Lretrofit2/Response;->body:Ljava/lang/Object;

    check-cast p1, Lokhttp3/ResponseBody;

    iget-object p2, p0, Lcom/deepalhome/launcher/settings/AboutSettingsView$loadAndShowDonateDialog$5;->this$0:Lcom/deepalhome/launcher/settings/AboutSettingsView;

    invoke-static {p2, p1}, Lcom/deepalhome/launcher/settings/AboutSettingsView;->access$parseDonorsData(Lcom/deepalhome/launcher/settings/AboutSettingsView;Lokhttp3/ResponseBody;)Lcom/deepalhome/launcher/http/DonorsData;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f130198

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/AboutSettingsView$loadAndShowDonateDialog$5;->$qrLoadingTv:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iput-object p1, p2, Lcom/deepalhome/launcher/settings/AboutSettingsView;->cachedDonorsData:Lcom/deepalhome/launcher/http/DonorsData;

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/AboutSettingsView$loadAndShowDonateDialog$5;->$fillDonateInfo:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "call"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "response"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p2, Lretrofit2/Response;->body:Ljava/lang/Object;

    check-cast p1, Lokhttp3/ResponseBody;

    iget-object p2, p0, Lcom/deepalhome/launcher/settings/AboutSettingsView$loadAndShowDonateDialog$5;->this$0:Lcom/deepalhome/launcher/settings/AboutSettingsView;

    invoke-static {p2, p1}, Lcom/deepalhome/launcher/settings/AboutSettingsView;->access$parseDonateData(Lcom/deepalhome/launcher/settings/AboutSettingsView;Lokhttp3/ResponseBody;)Lcom/deepalhome/launcher/http/DonateData;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f130198

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/AboutSettingsView$loadAndShowDonateDialog$5;->$qrLoadingTv:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iput-object p1, p2, Lcom/deepalhome/launcher/settings/AboutSettingsView;->cachedDonateData:Lcom/deepalhome/launcher/http/DonateData;

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/AboutSettingsView$loadAndShowDonateDialog$5;->$fillDonateInfo:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
