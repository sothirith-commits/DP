.class public final Lcom/deepalhome/launcher/settings/AboutSettingsView;
.super Lcom/deepalhome/launcher/view/BaseView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/deepalhome/launcher/view/BaseView<",
        "Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public cachedDonateData:Lcom/deepalhome/launcher/http/DonateData;

.field public cachedDonorsData:Lcom/deepalhome/launcher/http/DonorsData;

.field public isInPreview:Z

.field public final updateBadgeChangedListener:Lcom/deepalhome/launcher/settings/AboutSettingsView$updateBadgeChangedListener$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/view/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/deepalhome/launcher/settings/AboutSettingsView$updateBadgeChangedListener$1;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/settings/AboutSettingsView$updateBadgeChangedListener$1;-><init>(Lcom/deepalhome/launcher/settings/AboutSettingsView;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/AboutSettingsView;->updateBadgeChangedListener:Lcom/deepalhome/launcher/settings/AboutSettingsView$updateBadgeChangedListener$1;

    return-void
.end method

.method public static final access$parseDonateData(Lcom/deepalhome/launcher/settings/AboutSettingsView;Lokhttp3/ResponseBody;)Lcom/deepalhome/launcher/http/DonateData;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    :try_start_0
    sget v0, Lkotlin/Result;->$r8$clinit:I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    move-object p1, p0

    goto :goto_1

    :goto_0
    sget v0, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p1

    :goto_1
    instance-of v0, p1, Lkotlin/Result$Failure;

    if-eqz v0, :cond_1

    move-object p1, p0

    :cond_1
    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_2

    goto :goto_5

    :cond_2
    :try_start_1
    invoke-static {p1}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    sget v0, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p1

    :goto_2
    instance-of v0, p1, Lkotlin/Result$Failure;

    if-eqz v0, :cond_3

    move-object p1, p0

    :cond_3
    check-cast p1, Lcom/google/gson/JsonElement;

    if-nez p1, :cond_4

    goto :goto_5

    :cond_4
    invoke-static {p1}, Lcom/deepalhome/launcher/settings/AboutSettingsView;->unwrapDataElement(Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_5

    :cond_5
    :try_start_2
    invoke-static {p1}, Lcom/deepalhome/launcher/settings/AboutSettingsView;->parseDonateDataElement(Lcom/google/gson/JsonElement;)Lcom/deepalhome/launcher/http/DonateData;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    sget v0, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p1

    :goto_3
    instance-of v0, p1, Lkotlin/Result$Failure;

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    move-object p0, p1

    :goto_4
    check-cast p0, Lcom/deepalhome/launcher/http/DonateData;

    :goto_5
    return-object p0
.end method

.method public static final access$parseDonorsData(Lcom/deepalhome/launcher/settings/AboutSettingsView;Lokhttp3/ResponseBody;)Lcom/deepalhome/launcher/http/DonorsData;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    :try_start_0
    sget v0, Lkotlin/Result;->$r8$clinit:I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    move-object p1, p0

    goto :goto_1

    :goto_0
    sget v0, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p1

    :goto_1
    instance-of v0, p1, Lkotlin/Result$Failure;

    if-eqz v0, :cond_1

    move-object p1, p0

    :cond_1
    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_2

    goto :goto_6

    :cond_2
    :try_start_1
    invoke-static {p1}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    sget v0, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p1

    :goto_2
    instance-of v0, p1, Lkotlin/Result$Failure;

    if-eqz v0, :cond_3

    move-object p1, p0

    :cond_3
    check-cast p1, Lcom/google/gson/JsonElement;

    if-nez p1, :cond_4

    goto :goto_6

    :cond_4
    invoke-static {p1}, Lcom/deepalhome/launcher/settings/AboutSettingsView;->unwrapDataElement(Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_6

    :cond_5
    :try_start_2
    instance-of v0, p1, Lcom/google/gson/JsonObject;

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    const-string v0, "description"

    invoke-static {p1, v0}, Lcom/deepalhome/launcher/settings/AboutSettingsView;->getStringOrNull(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "items"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-static {p1}, Lcom/deepalhome/launcher/settings/AboutSettingsView;->parseDonorItems(Lcom/google/gson/JsonElement;)Ljava/util/List;

    move-result-object p1

    goto :goto_3

    :cond_6
    instance-of v0, p1, Lcom/google/gson/JsonArray;

    if-eqz v0, :cond_7

    invoke-static {p1}, Lcom/deepalhome/launcher/settings/AboutSettingsView;->parseDonorItems(Lcom/google/gson/JsonElement;)Ljava/util/List;

    move-result-object p1

    move-object v0, p0

    :goto_3
    new-instance v1, Lcom/deepalhome/launcher/http/DonorsData;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v0, p1, v2}, Lcom/deepalhome/launcher/http/DonorsData;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :cond_7
    move-object v1, p0

    goto :goto_4

    :catchall_2
    move-exception p1

    sget v0, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v1

    :goto_4
    instance-of p1, v1, Lkotlin/Result$Failure;

    if-eqz p1, :cond_8

    goto :goto_5

    :cond_8
    move-object p0, v1

    :goto_5
    check-cast p0, Lcom/deepalhome/launcher/http/DonorsData;

    :goto_6
    return-object p0
.end method

.method public static getStringOrNull(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    instance-of v0, p0, Lcom/google/gson/JsonPrimitive;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v0

    iget-object v0, v0, Lcom/google/gson/JsonPrimitive;->value:Ljava/io/Serializable;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public static parseDonateDataElement(Lcom/google/gson/JsonElement;)Lcom/deepalhome/launcher/http/DonateData;
    .locals 4

    instance-of v0, p0, Lcom/google/gson/JsonObject;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p0

    const-string v0, "description"

    invoke-static {p0, v0}, Lcom/deepalhome/launcher/settings/AboutSettingsView;->getStringOrNull(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "donors_url"

    invoke-static {p0, v1}, Lcom/deepalhome/launcher/settings/AboutSettingsView;->getStringOrNull(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "items"

    invoke-virtual {p0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-static {p0}, Lcom/deepalhome/launcher/settings/AboutSettingsView;->parseDonateItems(Lcom/google/gson/JsonElement;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/google/gson/JsonArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/deepalhome/launcher/settings/AboutSettingsView;->parseDonateItems(Lcom/google/gson/JsonElement;)Ljava/util/List;

    move-result-object p0

    move-object v0, v1

    :goto_0
    new-instance v2, Lcom/deepalhome/launcher/http/DonateData;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v0, p0, v3, v1}, Lcom/deepalhome/launcher/http/DonateData;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;)V

    return-object v2

    :cond_1
    return-object v1
.end method

.method public static parseDonateItems(Lcom/google/gson/JsonElement;)Ljava/util/List;
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    instance-of v1, p0, Lcom/google/gson/JsonArray;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-nez p0, :cond_1

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object p0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonElement;

    if-eqz v2, :cond_3

    instance-of v3, v2, Lcom/google/gson/JsonObject;

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v2, v0

    :goto_2
    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    const-string v3, "image_url"

    invoke-static {v2, v3}, Lcom/deepalhome/launcher/settings/AboutSettingsView;->getStringOrNull(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    const-string v3, "imageUrl"

    invoke-static {v2, v3}, Lcom/deepalhome/launcher/settings/AboutSettingsView;->getStringOrNull(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_5
    if-eqz v3, :cond_2

    invoke-static {v3}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_1

    :cond_6
    sget-object v4, Lcom/deepalhome/launcher/http/OpenListProxy;->INSTANCE:Lcom/deepalhome/launcher/http/OpenListProxy;

    sget-object v5, Lcom/deepalhome/launcher/http/Server;->INSTANCE:Lcom/deepalhome/launcher/http/Server;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "/donate/s05"

    goto :goto_3

    :cond_7
    const-string v5, "/donate"

    :goto_3
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v5}, Lcom/deepalhome/launcher/http/OpenListProxy;->resolveProxyAssetUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Lcom/deepalhome/launcher/http/DonateItem;

    const-string v5, "name"

    invoke-static {v2, v5}, Lcom/deepalhome/launcher/settings/AboutSettingsView;->getStringOrNull(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "display_name"

    invoke-static {v2, v6}, Lcom/deepalhome/launcher/settings/AboutSettingsView;->getStringOrNull(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_8

    const-string v6, "displayName"

    invoke-static {v2, v6}, Lcom/deepalhome/launcher/settings/AboutSettingsView;->getStringOrNull(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_8
    invoke-direct {v4, v5, v6, v3}, Lcom/deepalhome/launcher/http/DonateItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    return-object v1
.end method

.method public static parseDonorItems(Lcom/google/gson/JsonElement;)Ljava/util/List;
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    instance-of v1, p0, Lcom/google/gson/JsonArray;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-nez p0, :cond_1

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object p0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonElement;

    if-eqz v2, :cond_2

    instance-of v3, v2, Lcom/google/gson/JsonObject;

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v0

    :goto_2
    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/deepalhome/launcher/http/DonorItem;

    const-string v4, "user"

    invoke-static {v2, v4}, Lcom/deepalhome/launcher/settings/AboutSettingsView;->getStringOrNull(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "amount"

    invoke-static {v2, v5}, Lcom/deepalhome/launcher/settings/AboutSettingsView;->getStringOrNull(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "channel"

    invoke-static {v2, v6}, Lcom/deepalhome/launcher/settings/AboutSettingsView;->getStringOrNull(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "time"

    invoke-static {v2, v7}, Lcom/deepalhome/launcher/settings/AboutSettingsView;->getStringOrNull(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v5, v6, v2}, Lcom/deepalhome/launcher/http/DonorItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-object v1
.end method

.method public static unwrapDataElement(Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;
    .locals 3

    instance-of v0, p0, Lcom/google/gson/JsonNull;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lcom/google/gson/JsonObject;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    iget-object v1, v0, Lcom/google/gson/JsonObject;->members:Lcom/google/gson/internal/LinkedTreeMap;

    const-string v2, "data"

    invoke-virtual {v1, v2}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, v1, Lcom/google/gson/JsonNull;

    if-nez v1, :cond_1

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public getLayoutId()I
    .locals 0

    const p0, 0x7f0e001c

    return p0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lcom/deepalhome/launcher/view/BaseView;->onAttachedToWindow()V

    sget-object v0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->INSTANCE:Lcom/deepalhome/launcher/settings/S05AppUpdateManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/AboutSettingsView;->updateBadgeChangedListener:Lcom/deepalhome/launcher/settings/AboutSettingsView$updateBadgeChangedListener$1;

    invoke-static {p0}, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->addOnUpdateBadgeChangedListener(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->INSTANCE:Lcom/deepalhome/launcher/settings/S05AppUpdateManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/AboutSettingsView;->updateBadgeChangedListener:Lcom/deepalhome/launcher/settings/AboutSettingsView$updateBadgeChangedListener$1;

    invoke-static {v0}, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->removeOnUpdateBadgeChangedListener(Lkotlin/jvm/functions/Function1;)V

    invoke-super {p0}, Lcom/deepalhome/launcher/view/BaseView;->onDetachedFromWindow()V

    return-void
.end method

.method public final onInit()V
    .locals 4

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;->versionTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/blankj/utilcode/util/AppUtils;->getAppVersionName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f130028

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;->thanksTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f130027

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f130026

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;->specialThanksTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f130023

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f130022

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;->maintainerTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f13001f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f13001e

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;->supportTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f130025

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f130024

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;->pmTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f130021

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f130020

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "20260521-232207"

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f13001d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;->compileTimeTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f13001c

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;->aboutCard:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/deepalhome/launcher/music/MusicBar$$ExternalSyntheticLambda2;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/deepalhome/launcher/music/MusicBar$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;->versionTv:Landroid/widget/TextView;

    new-instance v1, Lcom/deepalhome/launcher/music/MusicBar$$ExternalSyntheticLambda2;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/deepalhome/launcher/music/MusicBar$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;->specialThanksCard:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/deepalhome/launcher/music/MusicBar$$ExternalSyntheticLambda2;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/deepalhome/launcher/music/MusicBar$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;->maintainerCard:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/deepalhome/launcher/music/MusicBar$$ExternalSyntheticLambda2;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/deepalhome/launcher/music/MusicBar$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;->supportCard:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/deepalhome/launcher/music/MusicBar$$ExternalSyntheticLambda2;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/deepalhome/launcher/music/MusicBar$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;->pmCard:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/deepalhome/launcher/music/MusicBar$$ExternalSyntheticLambda2;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/deepalhome/launcher/music/MusicBar$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;->compileTimeCard:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/deepalhome/launcher/music/MusicBar$$ExternalSyntheticLambda2;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/deepalhome/launcher/music/MusicBar$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;->updateCard:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/deepalhome/launcher/settings/AboutSettingsView$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/deepalhome/launcher/settings/AboutSettingsView$$ExternalSyntheticLambda1;-><init>(Lcom/deepalhome/launcher/settings/AboutSettingsView;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;->helpCard:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/deepalhome/launcher/settings/AboutSettingsView$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/deepalhome/launcher/settings/AboutSettingsView$$ExternalSyntheticLambda1;-><init>(Lcom/deepalhome/launcher/settings/AboutSettingsView;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;->donateCard:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/deepalhome/launcher/settings/AboutSettingsView$$ExternalSyntheticLambda1;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/deepalhome/launcher/settings/AboutSettingsView$$ExternalSyntheticLambda1;-><init>(Lcom/deepalhome/launcher/settings/AboutSettingsView;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->INSTANCE:Lcom/deepalhome/launcher/settings/S05AppUpdateManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->shouldShowUpdateBadge()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/settings/AboutSettingsView;->updateUpdateBadgeVisibility(Z)V

    sget-object v0, Lcom/deepalhome/launcher/http/Server;->INSTANCE:Lcom/deepalhome/launcher/http/Server;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v1

    sget-object v2, Lcom/deepalhome/launcher/http/Server;->openListProxyApi:Lcom/deepalhome/launcher/http/OpenListProxyApi;

    if-eqz v1, :cond_1

    const-string v1, "/donate/s05/donate.json"

    invoke-interface {v2, v1}, Lcom/deepalhome/launcher/http/OpenListProxyApi;->getFile(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Lcom/deepalhome/launcher/http/OpenListProxyApi;->getDonateInfo()Lretrofit2/Call;

    move-result-object v1

    :goto_1
    new-instance v2, Lcom/deepalhome/launcher/settings/AboutSettingsView$preloadDonateData$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/deepalhome/launcher/settings/AboutSettingsView$preloadDonateData$1;-><init>(Lcom/deepalhome/launcher/settings/AboutSettingsView;I)V

    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v0

    sget-object v1, Lcom/deepalhome/launcher/http/Server;->openListProxyApi:Lcom/deepalhome/launcher/http/OpenListProxyApi;

    if-eqz v0, :cond_2

    const-string v0, "/donate/s05/donors.json"

    invoke-interface {v1, v0}, Lcom/deepalhome/launcher/http/OpenListProxyApi;->getFile(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    goto :goto_2

    :cond_2
    invoke-interface {v1}, Lcom/deepalhome/launcher/http/OpenListProxyApi;->getDonors()Lretrofit2/Call;

    move-result-object v0

    :goto_2
    new-instance v1, Lcom/deepalhome/launcher/settings/AboutSettingsView$preloadDonateData$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/deepalhome/launcher/settings/AboutSettingsView$preloadDonateData$1;-><init>(Lcom/deepalhome/launcher/settings/AboutSettingsView;I)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public final updateUIMode(Z)V
    .locals 13

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p1, :cond_0

    const v1, 0x7f06038c

    goto :goto_0

    :cond_0
    const v1, 0x7f06038b

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    if-eqz p1, :cond_1

    const p1, 0x7f08025b

    goto :goto_1

    :cond_1
    const p1, 0x7f08025a

    :goto_1
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;->aboutCard:Landroid/widget/LinearLayout;

    const-string v2, "aboutCard"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;->helpCard:Landroid/widget/LinearLayout;

    const-string v3, "helpCard"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;->compileTimeCard:Landroid/widget/LinearLayout;

    const-string v4, "compileTimeCard"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;->thanksCard:Landroid/widget/LinearLayout;

    const-string v5, "thanksCard"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v5

    check-cast v5, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;

    iget-object v5, v5, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;->specialThanksCard:Landroid/widget/LinearLayout;

    const-string v6, "specialThanksCard"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v6

    check-cast v6, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;

    iget-object v6, v6, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;->maintainerCard:Landroid/widget/LinearLayout;

    const-string v7, "maintainerCard"

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v7

    check-cast v7, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;

    iget-object v7, v7, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;->supportCard:Landroid/widget/LinearLayout;

    const-string v8, "supportCard"

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v8

    check-cast v8, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;

    iget-object v8, v8, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;->pmCard:Landroid/widget/LinearLayout;

    const-string v9, "pmCard"

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v9

    check-cast v9, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;

    iget-object v9, v9, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;->updateCard:Landroid/widget/FrameLayout;

    const-string v10, "updateCard"

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v10

    check-cast v10, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;

    iget-object v10, v10, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;->donateCard:Landroid/widget/LinearLayout;

    const-string v11, "donateCard"

    invoke-static {v11, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v11, 0xa

    new-array v11, v11, [Landroid/view/ViewGroup;

    const/4 v12, 0x0

    aput-object v1, v11, v12

    const/4 v1, 0x1

    aput-object v2, v11, v1

    const/4 v1, 0x2

    aput-object v3, v11, v1

    const/4 v1, 0x3

    aput-object v4, v11, v1

    const/4 v1, 0x4

    aput-object v5, v11, v1

    const/4 v1, 0x5

    aput-object v6, v11, v1

    const/4 v1, 0x6

    aput-object v7, v11, v1

    const/4 v1, 0x7

    aput-object v8, v11, v1

    const/16 v1, 0x8

    aput-object v9, v11, v1

    const/16 v1, 0x9

    aput-object v10, v11, v1

    invoke-static {v11}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, p1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;

    iget-object v1, p1, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;->versionTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;

    iget-object v2, p1, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;->helpTitleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;

    iget-object v3, p1, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;->compileTimeTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;

    iget-object v4, p1, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;->thanksTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;

    iget-object v5, p1, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;->specialThanksTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;

    iget-object v6, p1, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;->maintainerTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;

    iget-object v7, p1, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;->supportTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;

    iget-object v8, p1, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;->pmTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;

    iget-object v9, p1, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;->updateTitleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;

    iget-object v10, p1, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;->donateTitleTv:Landroid/widget/TextView;

    filled-new-array/range {v1 .. v10}, [Landroid/widget/TextView;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    :cond_3
    sget-object p1, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->INSTANCE:Lcom/deepalhome/launcher/settings/S05AppUpdateManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->shouldShowUpdateBadge()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/settings/AboutSettingsView;->updateUpdateBadgeVisibility(Z)V

    return-void
.end method

.method public final updateUpdateBadgeVisibility(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/AboutSettingViewBinding;->updateBadgeView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
