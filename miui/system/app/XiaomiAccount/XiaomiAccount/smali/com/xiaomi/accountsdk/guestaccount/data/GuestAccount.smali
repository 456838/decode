.class public final Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final NE:Ljava/lang/String;

.field public final NF:Ljava/lang/String;

.field public final NG:Ljava/lang/String;

.field public final NH:Ljava/lang/String;

.field public final NI:Ljava/lang/String;

.field public final NJ:Ljava/lang/String;

.field public final NK:Ljava/lang/String;

.field public final NL:Ljava/lang/String;

.field public final NM:Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;

.field public final userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/data/e;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/e;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "userid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->userId:Ljava/lang/String;

    const-string/jumbo v1, "cuserid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NE:Ljava/lang/String;

    const-string/jumbo v1, "sid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NK:Ljava/lang/String;

    const-string/jumbo v1, "servicetoken"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NJ:Ljava/lang/String;

    const-string/jumbo v1, "security"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NI:Ljava/lang/String;

    const-string/jumbo v1, "passtoken"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NG:Ljava/lang/String;

    const-string/jumbo v1, "callback"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NF:Ljava/lang/String;

    const-string/jumbo v1, "slh"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NL:Ljava/lang/String;

    const-string/jumbo v1, "ph"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NH:Ljava/lang/String;

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;->To(I)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NM:Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;

    return-void
.end method

.method private constructor <init>(Lcom/xiaomi/accountsdk/guestaccount/data/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->TI(Lcom/xiaomi/accountsdk/guestaccount/data/d;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->userId:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->Tz(Lcom/xiaomi/accountsdk/guestaccount/data/d;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NE:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->TF(Lcom/xiaomi/accountsdk/guestaccount/data/d;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NK:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->TE(Lcom/xiaomi/accountsdk/guestaccount/data/d;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NJ:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->TD(Lcom/xiaomi/accountsdk/guestaccount/data/d;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NI:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->TB(Lcom/xiaomi/accountsdk/guestaccount/data/d;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NG:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->TA(Lcom/xiaomi/accountsdk/guestaccount/data/d;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NF:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->TG(Lcom/xiaomi/accountsdk/guestaccount/data/d;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NL:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->TC(Lcom/xiaomi/accountsdk/guestaccount/data/d;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NH:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->TH(Lcom/xiaomi/accountsdk/guestaccount/data/d;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NM:Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/accountsdk/guestaccount/data/d;Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;-><init>(Lcom/xiaomi/accountsdk/guestaccount/data/d;)V

    return-void
.end method


# virtual methods
.method public Tj(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;
    .locals 2

    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/data/d;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/d;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->Tv(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/d;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->Ty(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/d;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->Tp(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/d;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->Tr(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/d;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NJ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->Tu(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/d;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->Tt(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/d;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->Tq(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/d;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->Tw(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/d;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->Ts(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->Tx(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;)Lcom/xiaomi/accountsdk/guestaccount/data/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->build()Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;

    move-result-object v0

    return-object v0
.end method

.method public Tk()Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;
    .locals 2

    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/data/d;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/d;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->Tv(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/d;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->Ty(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/d;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->Tp(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->Tr(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/d;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NJ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->Tu(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/d;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->Tt(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/d;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->Tq(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/d;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->Tw(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/d;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->Ts(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/d;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NM:Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->Tx(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;)Lcom/xiaomi/accountsdk/guestaccount/data/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->build()Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v2, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;

    if-nez v2, :cond_1

    return v1

    :cond_1
    check-cast p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;

    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->userId:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->userId:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->userId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_2
    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NE:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NE:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_3
    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NK:Ljava/lang/String;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NK:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NK:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_4
    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NJ:Ljava/lang/String;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NJ:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NJ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_5
    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NI:Ljava/lang/String;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NI:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NI:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_6
    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NG:Ljava/lang/String;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NG:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    :cond_7
    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NF:Ljava/lang/String;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NF:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NF:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_8
    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NL:Ljava/lang/String;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NL:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    :cond_9
    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NH:Ljava/lang/String;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NH:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    :cond_a
    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NM:Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;

    iget-object v3, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NM:Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;

    if-ne v2, v3, :cond_1d

    :goto_0
    return v0

    :cond_b
    iget-object v2, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->userId:Ljava/lang/String;

    if-eqz v2, :cond_2

    :cond_c
    return v1

    :cond_d
    iget-object v2, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NE:Ljava/lang/String;

    if-eqz v2, :cond_3

    :cond_e
    return v1

    :cond_f
    iget-object v2, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NK:Ljava/lang/String;

    if-eqz v2, :cond_4

    :cond_10
    return v1

    :cond_11
    iget-object v2, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NJ:Ljava/lang/String;

    if-eqz v2, :cond_5

    :cond_12
    return v1

    :cond_13
    iget-object v2, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NI:Ljava/lang/String;

    if-eqz v2, :cond_6

    :cond_14
    return v1

    :cond_15
    iget-object v2, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NG:Ljava/lang/String;

    if-eqz v2, :cond_7

    :cond_16
    return v1

    :cond_17
    iget-object v2, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NF:Ljava/lang/String;

    if-eqz v2, :cond_8

    :cond_18
    return v1

    :cond_19
    iget-object v2, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NL:Ljava/lang/String;

    if-eqz v2, :cond_9

    :cond_1a
    return v1

    :cond_1b
    iget-object v2, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NH:Ljava/lang/String;

    if-eqz v2, :cond_a

    :cond_1c
    return v1

    :cond_1d
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->userId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->userId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NE:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NK:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NK:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NJ:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NJ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NI:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NI:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NG:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NF:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NF:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NL:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NH:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NH:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NM:Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NM:Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_4

    :cond_6
    move v0, v1

    goto :goto_5

    :cond_7
    move v0, v1

    goto :goto_6

    :cond_8
    move v0, v1

    goto :goto_7

    :cond_9
    move v0, v1

    goto :goto_8
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/16 v3, 0x27

    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v1, "GuestAccount{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "userId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "cUserId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string/jumbo v1, ", sid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string/jumbo v1, ", serviceToken=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NJ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string/jumbo v1, ", security=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string/jumbo v1, ", passToken=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string/jumbo v1, ", callback=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NF:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string/jumbo v1, ", slh=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string/jumbo v1, ", ph=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string/jumbo v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NM:Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "userid"

    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->userId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "cuserid"

    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NE:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "sid"

    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NK:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "servicetoken"

    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NJ:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "security"

    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NI:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "passtoken"

    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NG:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "callback"

    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NF:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "slh"

    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NL:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ph"

    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NH:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "type"

    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NM:Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NM:Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;

    iget v0, v0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;->serverValue:I

    goto :goto_0
.end method
