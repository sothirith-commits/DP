.class public final Lcom/deepalhome/launcher/settings/AboutSettingsView$preloadDonateData$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/deepalhome/launcher/settings/AboutSettingsView;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/settings/AboutSettingsView;I)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/settings/AboutSettingsView$preloadDonateData$1;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/AboutSettingsView$preloadDonateData$1;->this$0:Lcom/deepalhome/launcher/settings/AboutSettingsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/settings/AboutSettingsView$preloadDonateData$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "call"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "t"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :pswitch_0
    const-string p0, "call"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "t"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/AboutSettingsView$preloadDonateData$1;->this$0:Lcom/deepalhome/launcher/settings/AboutSettingsView;

    const-string v1, "response"

    const-string v2, "call"

    iget p0, p0, Lcom/deepalhome/launcher/settings/AboutSettingsView$preloadDonateData$1;->$r8$classId:I

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    packed-switch p0, :pswitch_data_0

    :try_start_0
    sget p0, Lkotlin/Result;->$r8$clinit:I

    iget-object p0, p2, Lretrofit2/Response;->body:Ljava/lang/Object;

    check-cast p0, Lokhttp3/ResponseBody;

    invoke-static {v0, p0}, Lcom/deepalhome/launcher/settings/AboutSettingsView;->access$parseDonorsData(Lcom/deepalhome/launcher/settings/AboutSettingsView;Lokhttp3/ResponseBody;)Lcom/deepalhome/launcher/http/DonorsData;

    move-result-object p0

    iput-object p0, v0, Lcom/deepalhome/launcher/settings/AboutSettingsView;->cachedDonorsData:Lcom/deepalhome/launcher/http/DonorsData;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget p1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    :goto_0
    return-void

    :pswitch_0
    :try_start_1
    sget p0, Lkotlin/Result;->$r8$clinit:I

    iget-object p0, p2, Lretrofit2/Response;->body:Ljava/lang/Object;

    check-cast p0, Lokhttp3/ResponseBody;

    invoke-static {v0, p0}, Lcom/deepalhome/launcher/settings/AboutSettingsView;->access$parseDonateData(Lcom/deepalhome/launcher/settings/AboutSettingsView;Lokhttp3/ResponseBody;)Lcom/deepalhome/launcher/http/DonateData;

    move-result-object p0

    iput-object p0, v0, Lcom/deepalhome/launcher/settings/AboutSettingsView;->cachedDonateData:Lcom/deepalhome/launcher/http/DonateData;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    sget p1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
