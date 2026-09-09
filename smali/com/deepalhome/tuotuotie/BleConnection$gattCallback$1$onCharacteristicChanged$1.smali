.class public final Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onCharacteristicChanged$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field final synthetic $gatt:Landroid/bluetooth/BluetoothGatt;

.field final synthetic this$0:Lcom/deepalhome/tuotuotie/BleConnection;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/deepalhome/tuotuotie/BleConnection;Landroid/bluetooth/BluetoothGatt;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onCharacteristicChanged$1;->$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    iput-object p2, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onCharacteristicChanged$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    iput-object p3, p0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onCharacteristicChanged$1;->$gatt:Landroid/bluetooth/BluetoothGatt;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x4

    iget-object v4, v0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onCharacteristicChanged$1;->$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "BleConnection"

    const-string v7, ", uuid="

    if-nez v4, :cond_0

    sget-object v1, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    iget-object v2, v0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onCharacteristicChanged$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    sget v3, Lcom/deepalhome/tuotuotie/BleConnection;->$r8$clinit:I

    invoke-virtual {v2}, Lcom/deepalhome/tuotuotie/BleConnection;->deviceLabel()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onCharacteristicChanged$1;->$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Notification callback data is null: device="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v0, v5}, Lcom/deepalhome/tuotuotie/BleLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :cond_0
    sget-object v8, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    iget-object v9, v0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onCharacteristicChanged$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    sget v10, Lcom/deepalhome/tuotuotie/BleConnection;->$r8$clinit:I

    invoke-virtual {v9}, Lcom/deepalhome/tuotuotie/BleConnection;->deviceLabel()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onCharacteristicChanged$1;->$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v10

    array-length v11, v4

    iget-object v12, v0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onCharacteristicChanged$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Lcom/deepalhome/tuotuotie/BleConnection$toHexString$1;->INSTANCE:Lcom/deepalhome/tuotuotie/BleConnection$toHexString$1;

    const-string v13, " "

    invoke-static {v4, v13, v12}, Lkotlin/collections/ArraysKt___ArraysKt;->joinToString$default([BLjava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v3, "Received characteristic notification: device="

    invoke-direct {v15, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", length="

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", payload="

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v6, v7}, Lcom/deepalhome/tuotuotie/BleLogger;->d$default(Lcom/deepalhome/tuotuotie/BleLogger;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onCharacteristicChanged$1;->this$0:Lcom/deepalhome/tuotuotie/BleConnection;

    iget-object v9, v0, Lcom/deepalhome/tuotuotie/BleConnection$gattCallback$1$onCharacteristicChanged$1;->$gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v0, v4

    if-nez v0, :cond_1

    invoke-virtual {v7}, Lcom/deepalhome/tuotuotie/BleConnection;->deviceLabel()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received empty notification: device="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, v5}, Lcom/deepalhome/tuotuotie/BleLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :cond_1
    const/4 v0, 0x0

    aget-byte v10, v4, v0

    if-ne v10, v2, :cond_a

    array-length v10, v4

    if-ge v10, v1, :cond_2

    invoke-virtual {v7}, Lcom/deepalhome/tuotuotie/BleConnection;->deviceLabel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v13, v12}, Lkotlin/collections/ArraysKt___ArraysKt;->joinToString$default([BLjava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Auth response abnormal: length < 2, device="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, v5}, Lcom/deepalhome/tuotuotie/BleLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :cond_2
    const/4 v10, 0x1

    aget-byte v11, v4, v10

    if-eq v11, v1, :cond_3

    invoke-virtual {v7}, Lcom/deepalhome/tuotuotie/BleConnection;->deviceLabel()Ljava/lang/String;

    move-result-object v0

    aget-byte v1, v4, v10

    sget v2, Lkotlin/UByte;->$r8$clinit:I

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v13, v12}, Lkotlin/collections/ArraysKt___ArraysKt;->joinToString$default([BLjava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Ignoring non-auth response data: device="

    const-string v7, ", opcode="

    invoke-static {v4, v0, v7, v1, v3}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, v5}, Lcom/deepalhome/tuotuotie/BleLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :cond_3
    array-length v10, v4

    const-string v11, ", size="

    const/16 v14, 0x2a

    if-ge v10, v14, :cond_4

    invoke-virtual {v7}, Lcom/deepalhome/tuotuotie/BleConnection;->deviceLabel()Ljava/lang/String;

    move-result-object v0

    array-length v1, v4

    invoke-static {v4, v13, v12}, Lkotlin/collections/ArraysKt___ArraysKt;->joinToString$default([BLjava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Auth response data incomplete: device="

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, v5}, Lcom/deepalhome/tuotuotie/BleLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :cond_4
    invoke-virtual {v7}, Lcom/deepalhome/tuotuotie/BleConnection;->deviceLabel()Ljava/lang/String;

    move-result-object v3

    array-length v10, v4

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v15, "Received auth response: device="

    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v6, v3}, Lcom/deepalhome/tuotuotie/BleLogger;->i$default(Lcom/deepalhome/tuotuotie/BleLogger;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xa

    invoke-static {v1, v4, v3}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyOfRange(I[BI)[B

    move-result-object v8

    const/16 v10, 0x1a

    invoke-static {v3, v4, v10}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyOfRange(I[BI)[B

    move-result-object v3

    invoke-static {v10, v4, v14}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyOfRange(I[BI)[B

    move-result-object v4

    iget-object v10, v7, Lcom/deepalhome/tuotuotie/BleConnection;->hostSalt:[B

    if-nez v10, :cond_5

    invoke-virtual {v7}, Lcom/deepalhome/tuotuotie/BleConnection;->deviceLabel()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Auth failed: hostSalt missing, device="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, v5}, Lcom/deepalhome/tuotuotie/BleLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :cond_5
    sget-object v5, Lcom/deepalhome/tuotuotie/BleAuthenticator;->INSTANCE:Lcom/deepalhome/tuotuotie/BleAuthenticator;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "0x112233445566"

    const-string v11, "0x"

    invoke-static {v5, v11, v0}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    const/16 v12, 0x10

    if-eqz v11, :cond_8

    const/4 v5, 0x6

    new-array v5, v5, [B

    const/16 v11, 0xc

    invoke-static {v0, v11}, Lkotlin/ranges/RangesKt___RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v11

    invoke-static {v11, v1}, Lkotlin/ranges/RangesKt___RangesKt;->step(Lkotlin/ranges/IntRange;I)Lkotlin/ranges/IntProgression;

    move-result-object v11

    iget v14, v11, Lkotlin/ranges/IntProgression;->first:I

    iget v15, v11, Lkotlin/ranges/IntProgression;->last:I

    iget v11, v11, Lkotlin/ranges/IntProgression;->step:I

    if-lez v11, :cond_6

    if-le v14, v15, :cond_7

    :cond_6
    if-gez v11, :cond_9

    if-gt v15, v14, :cond_9

    :cond_7
    :goto_0
    div-int/lit8 v17, v14, 0x2

    const-string v1, "112233445566"

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0, v12}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    shl-int/2addr v0, v2

    const/16 v16, 0x1

    add-int/lit8 v2, v14, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1, v12}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    add-int/2addr v1, v0

    int-to-byte v0, v1

    aput-byte v0, v5, v17

    if-eq v14, v15, :cond_9

    add-int/2addr v14, v11

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x4

    goto :goto_0

    :cond_8
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    const-string v0, "this as java.lang.String).getBytes(charset)"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_9
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-static {v10, v8}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->plus([B[B)[B

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->plus([B[B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-static {v1, v0, v12}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyOfRange(I[BI)[B

    move-result-object v1

    const/16 v2, 0x20

    invoke-static {v12, v0, v2}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyOfRange(I[BI)[B

    move-result-object v0

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    sget-object v2, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    invoke-virtual {v7}, Lcom/deepalhome/tuotuotie/BleConnection;->deviceLabel()Ljava/lang/String;

    move-result-object v5

    sget-object v10, Lcom/deepalhome/tuotuotie/BleConnection$toHexString$1;->INSTANCE:Lcom/deepalhome/tuotuotie/BleConnection$toHexString$1;

    invoke-static {v8, v13, v10}, Lkotlin/collections/ArraysKt___ArraysKt;->joinToString$default([BLjava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0}, Lcom/deepalhome/tuotuotie/BleConnection;->toHexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-static {v1}, Lcom/deepalhome/tuotuotie/BleConnection;->toHexString([B)Ljava/lang/String;

    move-result-object v11

    const-string v12, "Auth parameters derived: device="

    const-string v13, ", deviceSalt="

    const-string v14, ", iv="

    invoke-static {v12, v5, v13, v8, v14}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", key="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v6, v5}, Lcom/deepalhome/tuotuotie/BleLogger;->d$default(Lcom/deepalhome/tuotuotie/BleLogger;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v5, Lcom/deepalhome/tuotuotie/BleAuthenticator;->INSTANCE:Lcom/deepalhome/tuotuotie/BleAuthenticator;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v1, v0}, Lcom/deepalhome/tuotuotie/BleAuthenticator;->decrypt([B[B[B)V

    invoke-static {v4, v1, v0}, Lcom/deepalhome/tuotuotie/BleAuthenticator;->decrypt([B[B[B)V

    sget-object v0, Lcom/deepalhome/tuotuotie/BleConnectionState;->AUTHENTICATED:Lcom/deepalhome/tuotuotie/BleConnectionState;

    const-string v1, "auth response decrypted"

    invoke-virtual {v7, v0, v1}, Lcom/deepalhome/tuotuotie/BleConnection;->updateState(Lcom/deepalhome/tuotuotie/BleConnectionState;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/deepalhome/tuotuotie/BleConnection;->deviceLabel()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authentication successful: device="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v6, v0}, Lcom/deepalhome/tuotuotie/BleLogger;->i$default(Lcom/deepalhome/tuotuotie/BleLogger;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/tuotuotie/BleConnection$handleAuthResponse$1;

    invoke-direct {v0, v7}, Lcom/deepalhome/tuotuotie/BleConnection$handleAuthResponse$1;-><init>(Lcom/deepalhome/tuotuotie/BleConnection;)V

    invoke-virtual {v7, v9, v0}, Lcom/deepalhome/tuotuotie/BleConnection;->enqueueGattOperation(Landroid/bluetooth/BluetoothGatt;Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lcom/deepalhome/tuotuotie/BleConnection$handleAuthResponse$2;

    invoke-direct {v0, v7}, Lcom/deepalhome/tuotuotie/BleConnection$handleAuthResponse$2;-><init>(Lcom/deepalhome/tuotuotie/BleConnection;)V

    invoke-virtual {v7, v9, v0}, Lcom/deepalhome/tuotuotie/BleConnection;->enqueueGattOperation(Landroid/bluetooth/BluetoothGatt;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v7, v9}, Lcom/deepalhome/tuotuotie/BleConnection;->startBatteryPolling(Landroid/bluetooth/BluetoothGatt;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    sget-object v1, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    invoke-virtual {v7}, Lcom/deepalhome/tuotuotie/BleConnection;->deviceLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Authentication failed: device="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", error="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v2, v0}, Lcom/deepalhome/tuotuotie/BleLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/deepalhome/tuotuotie/BleProtocol;->INSTANCE:Lcom/deepalhome/tuotuotie/BleProtocol;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x4

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    invoke-virtual {v7, v9, v0}, Lcom/deepalhome/tuotuotie/BleConnection;->writeCharacteristic(Landroid/bluetooth/BluetoothGatt;[B)V

    goto/16 :goto_3

    :cond_a
    move v0, v1

    if-ne v10, v0, :cond_f

    array-length v1, v4

    if-ge v1, v0, :cond_b

    invoke-virtual {v7}, Lcom/deepalhome/tuotuotie/BleConnection;->deviceLabel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v13, v12}, Lkotlin/collections/ArraysKt___ArraysKt;->joinToString$default([BLjava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Event notification length abnormal: device="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, v5}, Lcom/deepalhome/tuotuotie/BleLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :cond_b
    const/4 v0, 0x1

    aget-byte v1, v4, v0

    invoke-static {}, Lcom/deepalhome/tuotuotie/EventType;->values()[Lcom/deepalhome/tuotuotie/EventType;

    move-result-object v2

    array-length v8, v2

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_d

    aget-object v10, v2, v9

    invoke-virtual {v10}, Lcom/deepalhome/tuotuotie/EventType;->getCode()B

    move-result v11

    if-ne v11, v1, :cond_c

    goto :goto_2

    :cond_c
    add-int/2addr v9, v0

    goto :goto_1

    :cond_d
    move-object v10, v5

    :goto_2
    if-nez v10, :cond_e

    sget-object v0, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    invoke-virtual {v7}, Lcom/deepalhome/tuotuotie/BleConnection;->deviceLabel()Ljava/lang/String;

    move-result-object v2

    sget v7, Lkotlin/UByte;->$r8$clinit:I

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sget-object v7, Lcom/deepalhome/tuotuotie/BleConnection$toHexString$1;->INSTANCE:Lcom/deepalhome/tuotuotie/BleConnection$toHexString$1;

    invoke-static {v4, v13, v7}, Lkotlin/collections/ArraysKt___ArraysKt;->joinToString$default([BLjava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "Unknown event code: device="

    const-string v8, ", code="

    invoke-static {v7, v2, v8, v1, v3}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v1, v5}, Lcom/deepalhome/tuotuotie/BleLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_e
    sget-object v0, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    invoke-virtual {v7}, Lcom/deepalhome/tuotuotie/BleConnection;->deviceLabel()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received BLE event: device="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v6, v1}, Lcom/deepalhome/tuotuotie/BleLogger;->i$default(Lcom/deepalhome/tuotuotie/BleLogger;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/tuotuotie/BleEvent;

    iget-object v1, v7, Lcom/deepalhome/tuotuotie/BleConnection;->deviceAddress:Ljava/lang/String;

    invoke-direct {v0, v1, v10}, Lcom/deepalhome/tuotuotie/BleEvent;-><init>(Ljava/lang/String;Lcom/deepalhome/tuotuotie/EventType;)V

    iget-object v1, v7, Lcom/deepalhome/tuotuotie/BleConnection;->onEvent:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_f
    invoke-virtual {v7}, Lcom/deepalhome/tuotuotie/BleConnection;->deviceLabel()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v1, v4, v1

    sget v2, Lkotlin/UByte;->$r8$clinit:I

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v13, v12}, Lkotlin/collections/ArraysKt___ArraysKt;->joinToString$default([BLjava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Unknown notification type: device="

    const-string v7, ", header="

    invoke-static {v4, v0, v7, v1, v3}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, v5}, Lcom/deepalhome/tuotuotie/BleLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :array_0
    .array-data 1
        0x4t
        0x3t
        0x2t
        0x0t
    .end array-data
.end method