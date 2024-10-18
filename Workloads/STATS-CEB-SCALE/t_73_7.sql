SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
votes v,
badges b,
users u
WHERE p.PostTypeId = 1
AND p.Score <= 8
AND p.ViewCount >= 3056.0
AND p.ViewCount <= 4200.0
AND p.AnswerCount <= 14.0
AND u.DownVotes >= 10

AND u.Id = p.OwnerUserId
AND u.Id = b.UserId
AND p.Id = c.PostId
AND p.Id = ph.PostId
AND p.Id = v.PostId;