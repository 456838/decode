.class public final Lcom/xiaomi/passport/e;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final Lr:[I

.field public static final Ls:[I

.field public static final Lt:[I

.field public static final Lu:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaomi/passport/e;->Lr:[I

    const v0, 0x7f01001b

    const v1, 0x7f01001c

    const v2, 0x7f01001d

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/xiaomi/passport/e;->Lt:[I

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/xiaomi/passport/e;->Ls:[I

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/xiaomi/passport/e;->Lu:[I

    return-void

    :array_0
    .array-data 4
        0x7f010000
        0x7f010001
        0x7f010002
        0x7f010003
        0x7f010004
        0x7f010005
    .end array-data

    :array_1
    .array-data 4
        0x7f01000f
        0x7f010010
        0x7f010011
        0x7f010012
        0x7f010013
        0x7f010014
        0x7f010015
        0x7f010016
        0x7f010017
        0x7f010018
        0x7f010019
        0x7f01001a
    .end array-data

    :array_2
    .array-data 4
        0x7f010006
        0x7f010007
        0x7f010008
        0x7f010009
        0x7f01000a
        0x7f01000b
        0x7f01000c
        0x7f01000d
        0x7f01000e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
