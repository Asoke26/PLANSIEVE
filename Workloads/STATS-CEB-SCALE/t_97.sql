SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE p.Score<=52
AND p.AnswerCount>=0
AND u.UpVotes>=0
AND v.CreationDate>=28
AND u.CreationDate>=105
AND u.CreationDate<=1539

AND u.Id = p.OwnerUserId
AND u.Id = c.UserId
AND u.Id = v.UserId;