.class public final Lcom/deepalhome/launcher/navigation/editor/GridEditValidator$coveredSeparatorIds$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/navigation/editor/GridEditValidator$coveredSeparatorIds$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/navigation/editor/GridEditValidator$coveredSeparatorIds$2;

    invoke-direct {v0}, Lcom/deepalhome/launcher/navigation/editor/GridEditValidator$coveredSeparatorIds$2;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/navigation/editor/GridEditValidator$coveredSeparatorIds$2;->INSTANCE:Lcom/deepalhome/launcher/navigation/editor/GridEditValidator$coveredSeparatorIds$2;

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
    .locals 1

    check-cast p1, Lcom/deepalhome/launcher/navigation/model/GridItem;

    const-string p0, "it"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/navigation/model/GridItemType;->SEPARATOR:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    iget-object v0, p1, Lcom/deepalhome/launcher/navigation/model/GridItem;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    if-ne v0, p0, :cond_0

    iget-boolean p0, p1, Lcom/deepalhome/launcher/navigation/model/GridItem;->removable:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
