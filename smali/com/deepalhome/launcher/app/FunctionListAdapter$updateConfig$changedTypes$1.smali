.class public final synthetic Lcom/deepalhome/launcher/app/FunctionListAdapter$updateConfig$changedTypes$1;
.super Lkotlin/jvm/internal/PropertyReference1Impl;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/app/FunctionListAdapter$updateConfig$changedTypes$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/app/FunctionListAdapter$updateConfig$changedTypes$1;

    invoke-direct {v0}, Lcom/deepalhome/launcher/app/FunctionListAdapter$updateConfig$changedTypes$1;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/app/FunctionListAdapter$updateConfig$changedTypes$1;->INSTANCE:Lcom/deepalhome/launcher/app/FunctionListAdapter$updateConfig$changedTypes$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-class v0, Lcom/deepalhome/launcher/app/FunctionPaletteItemModel;

    const-string v1, "type"

    const-string v2, "getType()Lcom/deepalhome/launcher/navigation/model/GridItemType;"

    invoke-direct {p0, v0, v1, v2}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/deepalhome/launcher/app/FunctionPaletteItemModel;

    iget-object p0, p1, Lcom/deepalhome/launcher/app/FunctionPaletteItemModel;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    return-object p0
.end method
