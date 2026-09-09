.class public final Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$showColumnOrderDialog$4;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $adapter:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnOrderAdapter;

.field final synthetic $section:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnSection;

.field final synthetic $showCount:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic this$0:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnOrderAdapter;Lkotlin/jvm/internal/Ref$IntRef;Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnSection;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$showColumnOrderDialog$4;->$adapter:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnOrderAdapter;

    iput-object p2, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$showColumnOrderDialog$4;->$showCount:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p3, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$showColumnOrderDialog$4;->this$0:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;

    iput-object p4, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$showColumnOrderDialog$4;->$section:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnSection;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$showColumnOrderDialog$4;->$adapter:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnOrderAdapter;

    iget-object v0, v0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnOrderAdapter;->keys:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$showColumnOrderDialog$4;->$showCount:Lkotlin/jvm/internal/Ref$IntRef;

    iget v1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->take(ILjava/util/Collection;)Ljava/util/List;

    move-result-object v2

    iget-object v0, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$showColumnOrderDialog$4;->this$0:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$showColumnOrderDialog$4;->$section:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnSection;

    sget-object v1, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->Companion:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    const/16 v7, 0x3e

    const-string v3, ","

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v2, 0x1

    if-eq p0, v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/deepalhome/launcher/config/UserConfig;->setCarS05SinceChargedColumns(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/deepalhome/launcher/config/UserConfig;->setCarS05CurrentTripColumns(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->applyColumnLayout()V

    sget-object p0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarS05InfoUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->cacheCarS05Info:Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;

    invoke-virtual {v0, p0}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->bindS05Info(Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
