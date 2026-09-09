.class public final Lcom/luck/picture/lib/magical/BuildRecycleItemViewParams;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final viewParams:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/luck/picture/lib/magical/BuildRecycleItemViewParams;->viewParams:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getItemViewParams(I)Lcom/luck/picture/lib/magical/ViewParams;
    .locals 2

    sget-object v0, Lcom/luck/picture/lib/magical/BuildRecycleItemViewParams;->viewParams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, p0, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/luck/picture/lib/magical/ViewParams;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
