.class public Lcom/xiaomi/accountsdk/account/data/l;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final Rc:Ljava/lang/String;

.field public final Rd:Ljava/util/Calendar;

.field public final Re:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

.field public final Rf:Ljava/lang/String;

.field public final Rg:Lcom/xiaomi/accountsdk/account/data/Gender;

.field public final Rh:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

.field public final Ri:Z

.field public final Rj:Ljava/lang/String;

.field public final Rk:Ljava/lang/String;

.field public final Rl:Ljava/lang/String;

.field public final Rm:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final Rn:Ljava/lang/String;

.field public final Ro:Ljava/lang/String;

.field public final Rp:Ljava/lang/String;

.field public final userId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/Gender;Ljava/util/Calendar;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/xiaomi/accountsdk/account/data/Gender;",
            "Ljava/util/Calendar;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;",
            "Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/l;->userId:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/accountsdk/account/data/l;->Rp:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/accountsdk/account/data/l;->Rl:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/accountsdk/account/data/l;->Rc:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaomi/accountsdk/account/data/l;->Ro:Ljava/lang/String;

    iput-object p6, p0, Lcom/xiaomi/accountsdk/account/data/l;->Rm:Ljava/util/ArrayList;

    iput-object p7, p0, Lcom/xiaomi/accountsdk/account/data/l;->Rf:Ljava/lang/String;

    iput-object p8, p0, Lcom/xiaomi/accountsdk/account/data/l;->Rg:Lcom/xiaomi/accountsdk/account/data/Gender;

    iput-object p9, p0, Lcom/xiaomi/accountsdk/account/data/l;->Rd:Ljava/util/Calendar;

    iput-boolean p10, p0, Lcom/xiaomi/accountsdk/account/data/l;->Ri:Z

    iput-object p11, p0, Lcom/xiaomi/accountsdk/account/data/l;->Rj:Ljava/lang/String;

    iput-object p12, p0, Lcom/xiaomi/accountsdk/account/data/l;->Rn:Ljava/lang/String;

    iput-object p13, p0, Lcom/xiaomi/accountsdk/account/data/l;->Rk:Ljava/lang/String;

    iput-object p14, p0, Lcom/xiaomi/accountsdk/account/data/l;->Re:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    iput-object p15, p0, Lcom/xiaomi/accountsdk/account/data/l;->Rh:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/Gender;Ljava/util/Calendar;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;Lcom/xiaomi/accountsdk/account/data/l;)V
    .locals 0

    invoke-direct/range {p0 .. p15}, Lcom/xiaomi/accountsdk/account/data/l;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/Gender;Ljava/util/Calendar;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;)V

    return-void
.end method
