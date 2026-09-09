.class public final Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion$filterInvalidItems$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion$filterInvalidItems$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion$filterInvalidItems$1;

    invoke-direct {v0}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion$filterInvalidItems$1;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion$filterInvalidItems$1;->INSTANCE:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion$filterInvalidItems$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/deepalhome/launcher/navigation/model/GridItem;

    const-string p0, "it"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/navigation/model/GridItemType;->HOME:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    iget-object p1, p1, Lcom/deepalhome/launcher/navigation/model/GridItem;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    if-eq p1, p0, :cond_1

    sget-object p0, Lcom/deepalhome/launcher/navigation/model/GridItemType;->DRAWER:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    if-ne p1, p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p0, 0x1

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 p0, 0x0

    goto :goto_0

    :goto_2
    return-object p0
.end method
