.class public final synthetic Lcom/deepalhome/launcher/navigation/editor/GridEditValidator$coveredSeparatorIds$4;
.super Lkotlin/jvm/internal/PropertyReference1Impl;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/navigation/editor/GridEditValidator$coveredSeparatorIds$4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/navigation/editor/GridEditValidator$coveredSeparatorIds$4;

    invoke-direct {v0}, Lcom/deepalhome/launcher/navigation/editor/GridEditValidator$coveredSeparatorIds$4;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/navigation/editor/GridEditValidator$coveredSeparatorIds$4;->INSTANCE:Lcom/deepalhome/launcher/navigation/editor/GridEditValidator$coveredSeparatorIds$4;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-class v0, Lcom/deepalhome/launcher/navigation/model/GridItem;

    const-string v1, "id"

    const-string v2, "getId()Ljava/lang/String;"

    invoke-direct {p0, v0, v1, v2}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/deepalhome/launcher/navigation/model/GridItem;

    iget-object p0, p1, Lcom/deepalhome/launcher/navigation/model/GridItem;->id:Ljava/lang/String;

    return-object p0
.end method
