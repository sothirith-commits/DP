.class public final enum Lcom/deepalhome/launcher/task/model/ConditionLogic;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/deepalhome/launcher/task/model/ConditionLogic;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/deepalhome/launcher/task/model/ConditionLogic;

.field public static final enum AND:Lcom/deepalhome/launcher/task/model/ConditionLogic;

.field public static final enum OR:Lcom/deepalhome/launcher/task/model/ConditionLogic;


# direct methods
.method private static final synthetic $values()[Lcom/deepalhome/launcher/task/model/ConditionLogic;
    .locals 2

    sget-object v0, Lcom/deepalhome/launcher/task/model/ConditionLogic;->AND:Lcom/deepalhome/launcher/task/model/ConditionLogic;

    sget-object v1, Lcom/deepalhome/launcher/task/model/ConditionLogic;->OR:Lcom/deepalhome/launcher/task/model/ConditionLogic;

    filled-new-array {v0, v1}, [Lcom/deepalhome/launcher/task/model/ConditionLogic;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/deepalhome/launcher/task/model/ConditionLogic;

    const-string v1, "AND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/deepalhome/launcher/task/model/ConditionLogic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/deepalhome/launcher/task/model/ConditionLogic;->AND:Lcom/deepalhome/launcher/task/model/ConditionLogic;

    new-instance v0, Lcom/deepalhome/launcher/task/model/ConditionLogic;

    const-string v1, "OR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/deepalhome/launcher/task/model/ConditionLogic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/deepalhome/launcher/task/model/ConditionLogic;->OR:Lcom/deepalhome/launcher/task/model/ConditionLogic;

    invoke-static {}, Lcom/deepalhome/launcher/task/model/ConditionLogic;->$values()[Lcom/deepalhome/launcher/task/model/ConditionLogic;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/task/model/ConditionLogic;->$VALUES:[Lcom/deepalhome/launcher/task/model/ConditionLogic;

    invoke-static {v0}, Lkotlin/io/TextStreamsKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/task/model/ConditionLogic;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries;"
        }
    .end annotation

    sget-object v0, Lcom/deepalhome/launcher/task/model/ConditionLogic;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/deepalhome/launcher/task/model/ConditionLogic;
    .locals 1

    const-class v0, Lcom/deepalhome/launcher/task/model/ConditionLogic;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/task/model/ConditionLogic;

    return-object p0
.end method

.method public static values()[Lcom/deepalhome/launcher/task/model/ConditionLogic;
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/task/model/ConditionLogic;->$VALUES:[Lcom/deepalhome/launcher/task/model/ConditionLogic;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/deepalhome/launcher/task/model/ConditionLogic;

    return-object v0
.end method
