SELECT COUNT(*)
 FROM tags t,
posts p,
users u,
votes v,
badges b
WHERE u.Views >= 15
AND u.Views <= 248
AND u.UpVotes >= 218

AND p.Id = t.ExcerptPostId
AND u.Id = v.UserId
AND u.Id = b.UserId
AND u.Id = p.OwnerUserId;