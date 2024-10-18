SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
votes v,
badges b,
users u
WHERE c.Score=0
AND p.Score<=21
AND p.AnswerCount<=3
AND p.FavoriteCount>=0
AND u.Reputation<=240
AND v.CreationDate>=27
AND b.Date<=1542

AND u.Id = p.OwnerUserId
AND u.Id = b.UserId
AND p.Id = c.PostId
AND p.Id = ph.PostId
AND p.Id = v.PostId;