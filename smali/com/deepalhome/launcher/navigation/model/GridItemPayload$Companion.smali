.class public final Lcom/deepalhome/launcher/navigation/model/GridItemPayload$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/model/GridItemPayload$Companion;-><init>()V

    return-void
.end method

.method public static app$default(Lcom/deepalhome/launcher/navigation/model/GridItemPayload$Companion;Ljava/lang/String;Ljava/lang/String;)Lcom/deepalhome/launcher/navigation/model/GridItemPayload;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "packageName"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "label"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Lcom/deepalhome/launcher/navigation/model/GridItemPayload;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/deepalhome/launcher/navigation/model/GridItemPayload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
