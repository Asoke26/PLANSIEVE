SELECT COUNT(*)
 FROM tags t,
posts p,
users u,
votes v,
badges b
WHERE u.Views >= 4
AND u.Views <= 1070
AND u.UpVotes >= 408
AND v.BountyAmount >= 0.0
AND v.BountyAmount <= 100.0
AND u.CreationDate <= 297
AND b.Date <= 1441

AND p.Id = t.ExcerptPostId
AND u.Id = v.UserId
AND u.Id = b.UserId
AND u.Id = p.OwnerUserId;