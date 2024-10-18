SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
votes v,
badges b,
users u
WHERE p.ViewCount>=0
AND p.AnswerCount>=0
AND p.AnswerCount<=7
AND p.FavoriteCount>=0
AND p.FavoriteCount<=17
AND v.VoteTypeId=5
AND u.Reputation>=1
AND u.Views>=0
AND b.Date>=40
AND u.CreationDate>=58
AND u.CreationDate<=1542

AND u.Id = p.OwnerUserId
AND u.Id = b.UserId
AND p.Id = c.PostId
AND p.Id = ph.PostId
AND p.Id = v.PostId;