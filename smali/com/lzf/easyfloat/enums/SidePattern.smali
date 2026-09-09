.class public final enum Lcom/lzf/easyfloat/enums/SidePattern;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/lzf/easyfloat/enums/SidePattern;

.field public static final enum DEFAULT:Lcom/lzf/easyfloat/enums/SidePattern;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lcom/lzf/easyfloat/enums/SidePattern;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lzf/easyfloat/enums/SidePattern;->DEFAULT:Lcom/lzf/easyfloat/enums/SidePattern;

    new-instance v1, Lcom/lzf/easyfloat/enums/SidePattern;

    const-string v2, "LEFT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/lzf/easyfloat/enums/SidePattern;

    const-string v3, "RIGHT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lcom/lzf/easyfloat/enums/SidePattern;

    const-string v4, "TOP"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lcom/lzf/easyfloat/enums/SidePattern;

    const-string v5, "BOTTOM"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lcom/lzf/easyfloat/enums/SidePattern;

    const-string v6, "AUTO_HORIZONTAL"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v6, Lcom/lzf/easyfloat/enums/SidePattern;

    const-string v7, "AUTO_VERTICAL"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v7, Lcom/lzf/easyfloat/enums/SidePattern;

    const-string v8, "AUTO_SIDE"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v8, Lcom/lzf/easyfloat/enums/SidePattern;

    const-string v9, "RESULT_LEFT"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v9, Lcom/lzf/easyfloat/enums/SidePattern;

    const-string v10, "RESULT_RIGHT"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v10, Lcom/lzf/easyfloat/enums/SidePattern;

    const-string v11, "RESULT_TOP"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v11, Lcom/lzf/easyfloat/enums/SidePattern;

    const-string v12, "RESULT_BOTTOM"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v12, Lcom/lzf/easyfloat/enums/SidePattern;

    const-string v13, "RESULT_HORIZONTAL"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v13, Lcom/lzf/easyfloat/enums/SidePattern;

    const-string v14, "RESULT_VERTICAL"

    const/16 v15, 0xd

    invoke-direct {v13, v14, v15}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v14, Lcom/lzf/easyfloat/enums/SidePattern;

    const-string v15, "RESULT_SIDE"

    move-object/from16 v16, v13

    const/16 v13, 0xe

    invoke-direct {v14, v15, v13}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    move-object/from16 v13, v16

    filled-new-array/range {v0 .. v14}, [Lcom/lzf/easyfloat/enums/SidePattern;

    move-result-object v0

    sput-object v0, Lcom/lzf/easyfloat/enums/SidePattern;->$VALUES:[Lcom/lzf/easyfloat/enums/SidePattern;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lzf/easyfloat/enums/SidePattern;
    .locals 1

    const-class v0, Lcom/lzf/easyfloat/enums/SidePattern;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lzf/easyfloat/enums/SidePattern;

    return-object p0
.end method

.method public static values()[Lcom/lzf/easyfloat/enums/SidePattern;
    .locals 1

    sget-object v0, Lcom/lzf/easyfloat/enums/SidePattern;->$VALUES:[Lcom/lzf/easyfloat/enums/SidePattern;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lzf/easyfloat/enums/SidePattern;

    return-object v0
.end method
